# Lock Electrónico Controlado por App

Guia técnico completo para implementar locks que abrem quando a app envia comando.

---

## COMO FUNCIONA (Visão Geral)

```
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│   SMARTPHONE                    CAIXA DO JOGO                       │
│   ┌─────────┐                  ┌─────────────────────────────┐     │
│   │         │   Bluetooth      │                             │     │
│   │   APP   │ ════════════════>│  ESP32                      │     │
│   │  (PWA)  │   "ABRIR_FASE_1" │    │                        │     │
│   │         │                  │    │ GPIO Pin               │     │
│   └─────────┘                  │    ▼                        │     │
│                                │  ┌─────┐    ┌──────────┐   │     │
│                                │  │RELAY│───>│SOLENÓIDE │   │     │
│                                │  └─────┘    │  LOCK    │   │     │
│                                │             └──────────┘   │     │
│                                │                  │         │     │
│                                │              [CLACK!]      │     │
│                                │            Caixa abre      │     │
│                                └─────────────────────────────┘     │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### Sequência de Eventos:

1. **Jogador resolve puzzle** → Descobre código "0333"
2. **Insere código na app** → App valida que está correcto
3. **App envia comando Bluetooth** → "UNLOCK_PHASE_1"
4. **ESP32 recebe comando** → Activa GPIO pin
5. **Relay fecha circuito** → Alimenta solenóide com 12V
6. **Solenóide retrai** → Pin de bloqueio entra
7. **CLACK!** → Compartimento pode ser aberto

---

## COMPONENTES NECESSÁRIOS

### Por Cada Compartimento (~€35-45)

| Componente | Preço | Onde Comprar | Notas |
|------------|-------|--------------|-------|
| ESP32 DevKit V1 | €6-10 | AliExpress, Amazon | Um por caixa (controla todos os locks) |
| Solenoid Lock 12V | €4-8 | AliExpress | Tipo "fail-secure" (bloqueado sem energia) |
| Relay Module 5V | €1-3 | AliExpress | 1 canal por lock |
| Battery Holder 8xAA | €2-3 | AliExpress | Para 12V (8 x 1.5V) |
| Step-down converter | €2 | AliExpress | 12V → 5V para ESP32 |
| Wires + connectors | €3-5 | AliExpress | Dupont cables, terminals |
| **TOTAL (1 lock)** | **~€20-30** | | |
| **TOTAL (3 locks)** | **~€40-50** | | ESP32 partilhado |

### Alternativa: Bateria Recarregável

| Componente | Preço | Notas |
|------------|-------|-------|
| Li-Po 11.1V 2200mAh | €15 | Mais compacto, recarregável |
| BMS Board | €3 | Protecção de carga |

---

## DIAGRAMA DE LIGAÇÕES

```
                    ┌─────────────────────────────────────────┐
                    │              CAIXA                      │
                    │                                         │
  ┌──────────┐      │   ┌─────────┐      ┌─────────┐         │
  │ BATERIA  │      │   │  ESP32  │      │  RELAY  │         │
  │ 12V      │──────┼──>│         │      │ MODULE  │         │
  │ (8xAA)   │      │   │  3.3V   │      │         │         │
  └──────────┘      │   │         │      │    IN ──┼── GPIO  │
       │            │   │  GPIO23 ├──────┼─>       │  23     │
       │            │   │         │      │    VCC ─┼── 5V    │
       │            │   │   GND ──┼──────┼─> GND   │         │
       │            │   │         │      │         │         │
       │            │   │   5V  <─┼──┐   │    NO ──┼──┐      │
       │            │   └─────────┘  │   │    COM ─┼──┼──┐   │
       │            │                │   └─────────┘  │  │   │
       │            │   ┌─────────┐  │                │  │   │
       │            │   │STEP-DOWN│  │                │  │   │
       └────────────┼──>│ 12V→5V  ├──┘                │  │   │
                    │   └─────────┘                   │  │   │
                    │                                 │  │   │
                    │   ┌─────────────────────────────┼──┼─┐ │
                    │   │      SOLENOID LOCK          │  │ │ │
                    │   │                             │  │ │ │
                    │   │  Terminal + ◄───────────────┘  │ │ │
                    │   │  Terminal - ◄──────────────────┘ │ │
                    │   │                      (via 12V)   │ │
                    │   │  [====PIN====]  ←── retraí      │ │
                    │   │                                  │ │
                    │   └──────────────────────────────────┘ │
                    │                                         │
                    └─────────────────────────────────────────┘

NOTA: Quando relay activa, 12V passa para solenóide, pin retraí, lock abre.
```

---

## CÓDIGO ESP32 (Arduino IDE)

### Parte 1: Setup Bluetooth BLE

```cpp
// orfanato_lock_controller.ino
// ESP32 Lock Controller para Orfanato Game

#include <BLEDevice.h>
#include <BLEServer.h>
#include <BLEUtils.h>
#include <BLE2902.h>

// Configuração BLE
#define SERVICE_UUID        "4fafc201-1fb5-459e-8fcc-c5c9c331914b"
#define CHARACTERISTIC_UUID "beb5483e-36e1-4688-b7f5-ea07361b26a8"
#define DEVICE_NAME         "Orfanato-Box"

// Pins dos relays (um por compartimento)
#define RELAY_PHASE_1  23
#define RELAY_PHASE_2  22
#define RELAY_PHASE_4  21
// Fase 3 é digital, não precisa de lock físico

// Estado
BLEServer* pServer = NULL;
BLECharacteristic* pCharacteristic = NULL;
bool deviceConnected = false;

// Callback para conexões
class MyServerCallbacks: public BLEServerCallbacks {
    void onConnect(BLEServer* pServer) {
      deviceConnected = true;
      Serial.println("Device connected!");
    };

    void onDisconnect(BLEServer* pServer) {
      deviceConnected = false;
      Serial.println("Device disconnected!");
      // Reinicia advertising para nova conexão
      BLEDevice::startAdvertising();
    }
};

// Callback para comandos recebidos
class MyCallbacks: public BLECharacteristicCallbacks {
    void onWrite(BLECharacteristic *pCharacteristic) {
      String value = pCharacteristic->getValue().c_str();

      if (value.length() > 0) {
        Serial.print("Received command: ");
        Serial.println(value);

        // Processar comandos
        if (value == "UNLOCK_1") {
          unlockPhase(1);
        } else if (value == "UNLOCK_2") {
          unlockPhase(2);
        } else if (value == "UNLOCK_4") {
          unlockPhase(4);
        } else if (value == "LOCK_ALL") {
          lockAll();
        } else if (value == "STATUS") {
          sendStatus();
        }
      }
    }
};

void setup() {
  Serial.begin(115200);
  Serial.println("Orfanato Lock Controller Starting...");

  // Setup pins
  pinMode(RELAY_PHASE_1, OUTPUT);
  pinMode(RELAY_PHASE_2, OUTPUT);
  pinMode(RELAY_PHASE_4, OUTPUT);

  // Garantir que tudo começa bloqueado
  lockAll();

  // Inicializar BLE
  BLEDevice::init(DEVICE_NAME);

  // Criar servidor BLE
  pServer = BLEDevice::createServer();
  pServer->setCallbacks(new MyServerCallbacks());

  // Criar serviço
  BLEService *pService = pServer->createService(SERVICE_UUID);

  // Criar característica
  pCharacteristic = pService->createCharacteristic(
                      CHARACTERISTIC_UUID,
                      BLECharacteristic::PROPERTY_READ   |
                      BLECharacteristic::PROPERTY_WRITE  |
                      BLECharacteristic::PROPERTY_NOTIFY
                    );

  pCharacteristic->setCallbacks(new MyCallbacks());
  pCharacteristic->addDescriptor(new BLE2902());

  // Iniciar serviço
  pService->start();

  // Iniciar advertising
  BLEAdvertising *pAdvertising = BLEDevice::getAdvertising();
  pAdvertising->addServiceUUID(SERVICE_UUID);
  pAdvertising->setScanResponse(true);
  pAdvertising->setMinPreferred(0x06);
  pAdvertising->setMinPreferred(0x12);
  BLEDevice::startAdvertising();

  Serial.println("BLE Ready! Waiting for connections...");
}

void loop() {
  // Nada no loop - tudo é event-driven via BLE callbacks
  delay(100);
}

// Função para desbloquear uma fase
void unlockPhase(int phase) {
  int pin;

  switch(phase) {
    case 1: pin = RELAY_PHASE_1; break;
    case 2: pin = RELAY_PHASE_2; break;
    case 4: pin = RELAY_PHASE_4; break;
    default: return;
  }

  Serial.print("Unlocking phase ");
  Serial.println(phase);

  // Activar relay por 3 segundos (tempo para abrir)
  digitalWrite(pin, HIGH);
  delay(3000);
  digitalWrite(pin, LOW);

  // Notificar app
  String response = "UNLOCKED_" + String(phase);
  pCharacteristic->setValue(response.c_str());
  pCharacteristic->notify();

  Serial.println("Phase unlocked!");
}

// Função para bloquear tudo
void lockAll() {
  digitalWrite(RELAY_PHASE_1, LOW);
  digitalWrite(RELAY_PHASE_2, LOW);
  digitalWrite(RELAY_PHASE_4, LOW);
  Serial.println("All phases locked");
}

// Função para enviar status
void sendStatus() {
  String status = "STATUS:";
  status += digitalRead(RELAY_PHASE_1) ? "1" : "0";
  status += digitalRead(RELAY_PHASE_2) ? "1" : "0";
  status += digitalRead(RELAY_PHASE_4) ? "1" : "0";

  pCharacteristic->setValue(status.c_str());
  pCharacteristic->notify();
}
```

---

## CÓDIGO DA APP (JavaScript - Web Bluetooth API)

### Parte 2: PWA que controla os locks

```javascript
// lockController.js
// Módulo para controlar locks via Web Bluetooth

const DEVICE_NAME = 'Orfanato-Box';
const SERVICE_UUID = '4fafc201-1fb5-459e-8fcc-c5c9c331914b';
const CHARACTERISTIC_UUID = 'beb5483e-36e1-4688-b7f5-ea07361b26a8';

class LockController {
  constructor() {
    this.device = null;
    this.characteristic = null;
    this.isConnected = false;
  }

  // Verificar se Web Bluetooth está disponível
  isSupported() {
    return 'bluetooth' in navigator;
  }

  // Conectar à caixa
  async connect() {
    if (!this.isSupported()) {
      throw new Error('Web Bluetooth não suportado neste browser');
    }

    try {
      console.log('Procurando Orfanato-Box...');

      // Pedir ao utilizador para seleccionar o device
      this.device = await navigator.bluetooth.requestDevice({
        filters: [{ name: DEVICE_NAME }],
        optionalServices: [SERVICE_UUID]
      });

      console.log('Device encontrado:', this.device.name);

      // Conectar ao GATT server
      const server = await this.device.gatt.connect();
      console.log('Conectado ao GATT server');

      // Obter serviço
      const service = await server.getPrimaryService(SERVICE_UUID);
      console.log('Serviço obtido');

      // Obter característica
      this.characteristic = await service.getCharacteristic(CHARACTERISTIC_UUID);
      console.log('Característica obtida');

      // Subscrever notificações
      await this.characteristic.startNotifications();
      this.characteristic.addEventListener('characteristicvaluechanged',
        this.handleNotification.bind(this));

      this.isConnected = true;
      console.log('Conexão completa!');

      return true;

    } catch (error) {
      console.error('Erro ao conectar:', error);
      this.isConnected = false;
      throw error;
    }
  }

  // Desconectar
  disconnect() {
    if (this.device && this.device.gatt.connected) {
      this.device.gatt.disconnect();
    }
    this.isConnected = false;
    console.log('Desconectado');
  }

  // Enviar comando
  async sendCommand(command) {
    if (!this.characteristic) {
      throw new Error('Não conectado à caixa');
    }

    const encoder = new TextEncoder();
    await this.characteristic.writeValue(encoder.encode(command));
    console.log('Comando enviado:', command);
  }

  // Desbloquear uma fase específica
  async unlockPhase(phase) {
    if (![1, 2, 4].includes(phase)) {
      throw new Error('Fase inválida. Use 1, 2 ou 4');
    }

    await this.sendCommand(`UNLOCK_${phase}`);
  }

  // Bloquear tudo (reset)
  async lockAll() {
    await this.sendCommand('LOCK_ALL');
  }

  // Pedir status
  async getStatus() {
    await this.sendCommand('STATUS');
  }

  // Handler para notificações do ESP32
  handleNotification(event) {
    const decoder = new TextDecoder();
    const value = decoder.decode(event.target.value);
    console.log('Notificação recebida:', value);

    // Disparar evento custom para a app reagir
    window.dispatchEvent(new CustomEvent('lockResponse', {
      detail: { message: value }
    }));
  }
}

// Exportar instância singleton
export const lockController = new LockController();
```

### Parte 3: Integração na App React

```jsx
// UnlockButton.jsx
import React, { useState, useEffect } from 'react';
import { lockController } from './lockController';

function UnlockButton({ phase, code, correctCode }) {
  const [inputCode, setInputCode] = useState('');
  const [status, setStatus] = useState('locked'); // locked, unlocking, unlocked, error
  const [isConnected, setIsConnected] = useState(false);

  // Conectar à caixa quando componente monta
  useEffect(() => {
    // Listener para respostas do ESP32
    const handleResponse = (event) => {
      const message = event.detail.message;
      if (message === `UNLOCKED_${phase}`) {
        setStatus('unlocked');
      }
    };

    window.addEventListener('lockResponse', handleResponse);
    return () => window.removeEventListener('lockResponse', handleResponse);
  }, [phase]);

  // Função para conectar
  const handleConnect = async () => {
    try {
      await lockController.connect();
      setIsConnected(true);
    } catch (error) {
      alert('Não foi possível conectar à caixa. Verifique que está ligada.');
    }
  };

  // Função para validar código e desbloquear
  const handleUnlock = async () => {
    if (inputCode.toUpperCase() !== correctCode.toUpperCase()) {
      setStatus('error');
      setTimeout(() => setStatus('locked'), 2000);
      return;
    }

    try {
      setStatus('unlocking');
      await lockController.unlockPhase(phase);
      // Status será actualizado via notificação do ESP32
    } catch (error) {
      setStatus('error');
      console.error('Erro ao desbloquear:', error);
    }
  };

  return (
    <div className="unlock-container">
      {!isConnected ? (
        <button onClick={handleConnect} className="connect-btn">
          🔗 Conectar à Caixa
        </button>
      ) : (
        <>
          <input
            type="text"
            value={inputCode}
            onChange={(e) => setInputCode(e.target.value)}
            placeholder="Insere o código"
            disabled={status === 'unlocked'}
            className="code-input"
          />

          <button
            onClick={handleUnlock}
            disabled={status === 'unlocking' || status === 'unlocked'}
            className={`unlock-btn ${status}`}
          >
            {status === 'locked' && '🔒 Desbloquear Fase ' + phase}
            {status === 'unlocking' && '⏳ A desbloquear...'}
            {status === 'unlocked' && '🔓 Desbloqueado!'}
            {status === 'error' && '❌ Código errado!'}
          </button>
        </>
      )}
    </div>
  );
}

export default UnlockButton;
```

---

## MONTAGEM FÍSICA

### Passo 1: Preparar Solenóide Lock

```
SOLENOID LOCK (vista lateral)
┌────────────────────┐
│ ████████████████   │◄── Corpo do solenóide
│ ║              ║   │
│ ║   [BOBINA]   ║   │◄── Bobina electromagnética
│ ║              ║   │
│ ████████████████   │
│        │           │
│   ┌────┴────┐      │
│   │   PIN   │──────┤◄── Pin de bloqueio (retraí quando energizado)
│   └─────────┘      │
│                    │
│  [+] [─]           │◄── Terminais (12V DC)
└────────────────────┘

Quando 12V é aplicado:
- Bobina cria campo magnético
- Pin é puxado para dentro
- Lock liberta
```

### Passo 2: Instalar na Caixa

```
VISTA DE CIMA DA CAIXA
┌──────────────────────────────────────────┐
│                                          │
│   ┌─────────┐  ┌─────────┐  ┌─────────┐ │
│   │ FASE 1  │  │ FASE 2  │  │ FASE 4  │ │
│   │         │  │         │  │         │ │
│   │ [LOCK1] │  │ [LOCK2] │  │ [LOCK3] │ │
│   │    ↑    │  │    ↑    │  │    ↑    │ │
│   └────┼────┘  └────┼────┘  └────┼────┘ │
│        │           │           │        │
│   ┌────┴───────────┴───────────┴────┐   │
│   │        COMPARTIMENTO            │   │
│   │         ELECTRÓNICA             │   │
│   │                                 │   │
│   │  [ESP32] [RELAYS] [BATERIA]    │   │
│   │                                 │   │
│   └─────────────────────────────────┘   │
│                                          │
│               TAMPA PRINCIPAL            │
└──────────────────────────────────────────┘
```

### Passo 3: Detalhes do Lock

```
COMO O LOCK SEGURA A TAMPA

    Tampa do compartimento
    ════════════════════════
              │
              │ (quer abrir)
              ▼
    ┌─────────────────┐
    │   FRAME CAIXA   │
    │        ┌────────┤◄─── Orifício
    │        │ [PIN]══│◄─── Pin do solenóide (bloqueado)
    │        └────────┤
    │                 │
    └─────────────────┘

QUANDO APP ENVIA "UNLOCK":

    Tampa do compartimento
    ════════════════════════
              │
              │ ABRE!
              ▼
    ┌─────────────────┐
    │   FRAME CAIXA   │
    │        ┌────────┤
    │    ════│        │◄─── Pin recolhido!
    │        └────────┤
    │                 │
    └─────────────────┘
```

---

## LIMITAÇÕES & CONSIDERAÇÕES

### Browser Support (Web Bluetooth)

| Browser | Desktop | Mobile |
|---------|---------|--------|
| Chrome | ✅ Windows, Mac, Linux | ✅ Android |
| Edge | ✅ | ✅ Android |
| Opera | ✅ | ✅ Android |
| Firefox | ❌ | ❌ |
| Safari | ❌ | ❌ iOS |

**IMPORTANTE:** iOS/Safari NÃO suporta Web Bluetooth!

### Soluções para iOS

1. **App Nativa** - Desenvolver app iOS separada (custo alto)
2. **Fallback Manual** - Se iOS, mostrar código e usar lock de combinação
3. **QR Code Bridge** - App iOS scan QR que comunica com servidor local

### Bateria

- Solenóide consome ~500mA por 2-3 segundos por unlock
- 8xAA alcalinas (~2000mAh) = ~30-40 unlocks
- Recomendado: baterias recarregáveis ou Li-Po

### Segurança

- O PIN do solenóide pode ser forçado fisicamente
- Para jogo caseiro: não é problema
- Para produto comercial: considerar locks magnéticos mais robustos

---

## ALTERNATIVA: WiFi em vez de Bluetooth

Se preferires WiFi (mais fiável, funciona com todos os devices):

```cpp
// Alternativa com WiFi + HTTP
#include <WiFi.h>
#include <WebServer.h>

WebServer server(80);

void setup() {
  WiFi.softAP("Orfanato-Box", "password123");

  server.on("/unlock/1", []() {
    unlockPhase(1);
    server.send(200, "text/plain", "Phase 1 unlocked");
  });

  server.begin();
}

void loop() {
  server.handleClient();
}
```

App conecta ao WiFi "Orfanato-Box" e faz HTTP requests:
```javascript
fetch('http://192.168.4.1/unlock/1')
```

**Prós WiFi:** Funciona em todos os browsers/devices
**Contras WiFi:** Jogadores têm de mudar de WiFi (inconveniente)

---

## CUSTO TOTAL ESTIMADO

### Opção Bluetooth (Recomendada)

| Item | Qtd | Preço Unit. | Total |
|------|-----|-------------|-------|
| ESP32 DevKit | 1 | €8 | €8 |
| Solenoid Lock 12V | 3 | €5 | €15 |
| Relay Module 4-ch | 1 | €3 | €3 |
| Battery Holder 8xAA | 1 | €2 | €2 |
| Step-down 12V→5V | 1 | €2 | €2 |
| Wires, terminals | 1 | €5 | €5 |
| **TOTAL** | | | **€35** |

+ Baterias AA (8x): ~€8
+ Caixa/housing: depende do design

### Comparação com Locks Manuais

| Abordagem | Custo | Complexidade | "Wow Factor" |
|-----------|-------|--------------|--------------|
| Locks combo manuais | €15 | Zero | Baixo |
| Locks electrónicos | €45 | Média-Alta | Alto |

---

## PRÓXIMOS PASSOS SE QUISERES IMPLEMENTAR

1. **Comprar componentes** (~€35, AliExpress, 2-3 semanas envio)
2. **Montar circuito** de teste numa breadboard
3. **Carregar código** ESP32 via Arduino IDE
4. **Testar Web Bluetooth** no Chrome Android
5. **Integrar na app** PWA
6. **Construir caixa** com compartimentos
7. **Instalar locks** e fazer testes finais

---

## FONTES

- [ESP32 Web Bluetooth Tutorial](https://randomnerdtutorials.com/esp32-web-bluetooth/)
- [ESP32 Solenoid Lock Tutorial](https://esp32io.com/tutorials/esp32-solenoid-lock)
- [Escape Room Lockbox with CYD](https://hackmakemod.com/blogs/projects/escape-room-lockbox-with-the-cheap-yellow-display)
- [ArduinoProps for Escape Rooms](https://github.com/xcape-io/ArduinoProps)
- [Web Bluetooth API Docs](https://developer.mozilla.org/en-US/docs/Web/API/Web_Bluetooth_API)

---

*Technical documentation - December 2024*
