# Opções Budget & Open Source para Locks Electrónicos

Guia para implementar o sistema mais barato possível usando projectos open source.

---

## RESUMO: A OPÇÃO MAIS BARATA

### Opção Ultra-Budget (~€15 total para 3 locks)

| Componente | Preço | Onde |
|------------|-------|------|
| ESP8266 Wemos D1 Mini | €2-3 | AliExpress |
| 3x Solenoid Lock 12V | €3 cada = €9 | AliExpress |
| Relay Module 4-channel | €1.50 | AliExpress |
| 8xAA Battery Holder | €1 | AliExpress |
| Wires/Dupont cables | €1 | AliExpress |
| **TOTAL** | **~€15** | |

**Trade-off:** ESP8266 não tem Bluetooth, mas funciona com WiFi/WebSocket.

### Opção Budget com Bluetooth (~€20 total)

| Componente | Preço | Onde |
|------------|-------|------|
| ESP32-C3 Super Mini | €2-3 | AliExpress |
| 3x Solenoid Lock 12V | €9 | AliExpress |
| Relay Module 4-channel | €1.50 | AliExpress |
| Battery + Step-down | €3 | AliExpress |
| Wires | €1 | AliExpress |
| **TOTAL** | **~€18-20** | |

---

## ONDE COMPRAR (Europa)

### AliExpress (Mais Barato, 2-4 semanas)

| Item | Link Search | Preço |
|------|-------------|-------|
| ESP32-C3 Super Mini | "ESP32-C3 Super Mini" | €2-3 |
| ESP8266 D1 Mini | "Wemos D1 Mini" | €2 |
| Solenoid Lock 12V | "12V solenoid lock cabinet" | €2-4 |
| Relay 4-channel | "4 channel relay module 5V" | €1-2 |

### Opencircuit.shop (Holanda, 1-3 dias)

- Solenoid Lock 12V: €4.75
- ESP32 boards: €8-15
- **Vantagem:** Envio rápido EU, sem alfândega

### Amazon.de/.es (3-5 dias)

- Preços ~30-50% mais altos que AliExpress
- **Vantagem:** Envio rápido, devoluções fáceis

### AZDelivery (Alemanha)

- ESP32 Dev boards
- Boa qualidade, baseado na EU
- azdelivery.de

---

## PROJECTOS OPEN SOURCE PARA USAR

### 1. ArduinoProps (xcape-io) ⭐ RECOMENDADO

**GitHub:** https://github.com/xcape-io/ArduinoProps

**O que é:** Biblioteca completa para props de escape room com MQTT.

**Inclui:**
- Comunicação WiFi/Ethernet
- Protocolo MQTT para controlo centralizado
- Exemplos prontos para relays
- Dashboard de Game Master

**Como usar:**
```cpp
#include "ArduinoProps.h"

// Define o prop
WifiProp prop("Orfanato-Lock", "192.168.1.100", 1883);

void setup() {
  prop.addRelay(RELAY_PIN_1, "phase1");
  prop.addRelay(RELAY_PIN_2, "phase2");
  prop.begin();
}

void loop() {
  prop.loop();
}
```

---

### 2. Node-REDscape (playfultechnology) ⭐

**GitHub:** https://github.com/playfultechnology/node-redscape

**O que é:** Sistema completo de controlo de escape room com Node-RED.

**Vantagens:**
- Dashboard visual para Game Master
- Funciona com Arduino, ESP8266, ESP32, Raspberry Pi
- Comunicação via MQTT, Serial, WebSocket
- 100% gratuito e open source

**Arquitectura:**
```
┌──────────────┐     MQTT      ┌──────────────┐
│   Node-RED   │ ◄───────────► │   ESP8266    │
│  (Raspberry  │               │  (com locks) │
│   Pi ou PC)  │               └──────────────┘
└──────────────┘
       │
       │ HTTP
       ▼
┌──────────────┐
│   Browser    │
│  (Dashboard) │
└──────────────┘
```

---

### 3. ClueControl (Open Source Puzzles)

**GitHub:** https://github.com/ClueControl

**Projectos úteis:**
- `wire-puzzle` - 5 pares de fios para conectar
- `multi-rfid` - Múltiplos leitores RFID
- `relay-control` - Controlo de relays

---

### 4. arduinoWebSockets

**GitHub:** https://github.com/Links2004/arduinoWebSockets

**O que é:** Biblioteca WebSocket para ESP8266/ESP32.

**Útil para:** Comunicação directa entre browser e ESP sem servidor externo.

---

## ARQUITECTURA RECOMENDADA (Budget)

### Opção A: ESP8266 + WebSocket (Mais Barato)

```
┌─────────────────────────────────────────────────────────────┐
│                                                             │
│  📱 SMARTPHONE                  📦 CAIXA                    │
│  ┌────────────┐                ┌─────────────────┐         │
│  │            │                │                 │         │
│  │  Browser   │◄──── WiFi ────►│  ESP8266        │         │
│  │  (conecta  │   WebSocket    │  (Access Point) │         │
│  │  ao WiFi   │                │       │         │         │
│  │  da caixa) │                │       ▼         │         │
│  │            │                │    RELAYS       │         │
│  └────────────┘                │       │         │         │
│                                │       ▼         │         │
│                                │   SOLENOIDS     │         │
│                                └─────────────────┘         │
│                                                             │
└─────────────────────────────────────────────────────────────┘

FLUXO:
1. ESP8266 cria WiFi "Orfanato-Box" (Access Point mode)
2. Jogadores conectam telemóvel a esse WiFi
3. Abrem browser → 192.168.4.1 (página servida pelo ESP)
4. Página tem interface do jogo
5. Quando código correcto → WebSocket envia comando
6. ESP activa relay → lock abre
```

**Código ESP8266 (simplificado):**
```cpp
#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <WebSocketsServer.h>

const char* ssid = "Orfanato-Box";
const char* password = "orfanato2024";

ESP8266WebServer server(80);
WebSocketsServer webSocket(81);

#define RELAY_1 D1
#define RELAY_2 D2
#define RELAY_3 D3

void webSocketEvent(uint8_t num, WStype_t type, uint8_t * payload, size_t length) {
  if (type == WStype_TEXT) {
    String cmd = String((char*)payload);

    if (cmd == "UNLOCK_1") {
      digitalWrite(RELAY_1, HIGH);
      delay(3000);
      digitalWrite(RELAY_1, LOW);
      webSocket.sendTXT(num, "OK_1");
    }
    // ... similar para outros relays
  }
}

void setup() {
  pinMode(RELAY_1, OUTPUT);
  pinMode(RELAY_2, OUTPUT);
  pinMode(RELAY_3, OUTPUT);

  WiFi.softAP(ssid, password);

  server.on("/", []() {
    server.send(200, "text/html", getGameHTML());
  });

  server.begin();
  webSocket.begin();
  webSocket.onEvent(webSocketEvent);
}

void loop() {
  server.handleClient();
  webSocket.loop();
}
```

**Vantagem:** Funciona em TODOS os devices (iOS incluído!)
**Desvantagem:** Jogadores têm de mudar de WiFi

---

### Opção B: ESP32 + Bluetooth (Melhor UX, iOS não suportado)

Já documentado em `TECHNICAL_ELECTRONIC_LOCKS.md`.

**Vantagem:** Não precisa mudar WiFi
**Desvantagem:** iOS não suporta Web Bluetooth

---

### Opção C: Híbrida (Melhor dos dois mundos)

```
ESP32 com:
- Bluetooth BLE (para Android/Desktop)
- WiFi Access Point (fallback para iOS)

App detecta:
- Se Web Bluetooth disponível → usa Bluetooth
- Se não → pede para conectar ao WiFi da caixa
```

---

## COMPARAÇÃO FINAL

| Opção | Custo | iOS | Android | Complexidade | Open Source |
|-------|-------|-----|---------|--------------|-------------|
| ESP8266 + WebSocket | €15 | ✅ | ✅ | Média | ✅ |
| ESP32 + Bluetooth | €20 | ❌ | ✅ | Média | ✅ |
| ESP32 Híbrido | €20 | ✅ | ✅ | Alta | ✅ |
| Locks manuais | €10 | ✅ | ✅ | Zero | N/A |

---

## LISTA DE COMPRAS (AliExpress)

### Pack Mínimo (~€15)

```
Pesquisar no AliExpress:

1. "Wemos D1 Mini ESP8266" - €2
   Escolher: versão com CH340 chip

2. "12V cabinet solenoid lock" - €2-3 cada, comprar 3 = €9
   Escolher: versão pequena para gavetas

3. "4 channel relay module 5V optocoupler" - €1.50
   Escolher: com optocoupler (mais seguro)

4. "8 AA battery holder with DC plug" - €1
   Ou: "18650 battery holder 3S" para baterias recarregáveis

5. "Dupont cable kit male female" - €1
   40 fios é suficiente

TOTAL: ~€15 + envio (~€2-3)
```

### Pack Recomendado (~€25)

```
Tudo acima MAIS:

6. "ESP32-C3 Super Mini" - €3
   (backup com Bluetooth, ou para projectos futuros)

7. "DC-DC step down LM2596" - €1
   (12V → 5V mais estável que divisor)

8. "PCB prototype board 5x7cm" - €1
   (para montar tudo de forma permanente)

9. "JST connector kit" - €2
   (conexões mais profissionais)

TOTAL: ~€25
```

---

## RECURSOS OPEN SOURCE

### Código Pronto para Usar

| Projecto | URL | Descrição |
|----------|-----|-----------|
| ArduinoProps | github.com/xcape-io/ArduinoProps | Biblioteca escape room |
| Node-REDscape | github.com/playfultechnology/node-redscape | Sistema completo |
| arduinoWebSockets | github.com/Links2004/arduinoWebSockets | WebSocket library |
| ESP8266 WebSocket LED | gist.github.com/bbx10/667e3d4f5f2c0831d00b | Exemplo simples |

### Tutoriais

| Tutorial | URL |
|----------|-----|
| ESP8266 WebSocket | tttapa.github.io/ESP8266/Chap14%20-%20WebSocket.html |
| ESP32 Web Bluetooth | randomnerdtutorials.com/esp32-web-bluetooth/ |
| ESP32 Solenoid Lock | esp32io.com/tutorials/esp32-solenoid-lock |

---

## PRÓXIMOS PASSOS PRÁTICOS

### Semana 1: Encomendar
1. Fazer conta AliExpress (se não tiver)
2. Encomendar pack mínimo (~€15)
3. Tempo de espera: 2-4 semanas

### Semana 2-3: Preparar Software
1. Instalar Arduino IDE
2. Configurar para ESP8266/ESP32
3. Testar exemplos básicos (blink LED)
4. Estudar código dos projectos open source

### Semana 4-5: Componentes Chegam
1. Testar cada componente individualmente
2. Montar circuito em breadboard
3. Testar WebSocket com browser
4. Integrar com app PWA

### Semana 6: Integrar na Caixa
1. Soldar conexões permanentes
2. Montar na caixa física
3. Testar fluxo completo do jogo

---

## QUESTÕES EM ABERTO

### Para Decidir:

1. **ESP8266 (€2) ou ESP32-C3 (€3)?**
   - ESP8266: mais barato, só WiFi
   - ESP32-C3: +€1, tem Bluetooth

2. **Baterias AA ou Recarregáveis?**
   - AA: mais fácil de substituir
   - 18650: mais ecológico, precisa carregador

3. **WiFi Access Point ou conectar à rede existente?**
   - AP: funciona em qualquer lugar
   - Rede existente: não precisa mudar WiFi

4. **Usar Node-RED (Raspberry Pi) ou só ESP standalone?**
   - Node-RED: mais features, precisa de Pi
   - Standalone: mais simples, só o ESP

---

## FONTES

- [ESP32 vs ESP8266 Comparison](https://makeradvisor.com/esp32-vs-esp8266/)
- [Cheapest ESP32 Options](https://iotassistant.io/esp32/the-cheapest-esp32-module-what-you-need-to-know/)
- [ArduinoProps Library](https://github.com/xcape-io/ArduinoProps)
- [Node-REDscape](https://github.com/playfultechnology/node-redscape)
- [ESP8266 WebSocket Tutorial](https://tttapa.github.io/ESP8266/Chap14%20-%20WebSocket.html)
- [Opencircuit.shop - EU Supplier](https://opencircuit.shop/product/electric-solenoid-lock-12v)

---

*Research compiled: December 2024*
*Budget optimized for EU/PT buyers*
