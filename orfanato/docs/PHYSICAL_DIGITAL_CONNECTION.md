# Conexão Físico-Digital: Opções Técnicas

Análise de como conectar componentes físicos com a app digital.

---

## O PROBLEMA

Como é que quando o jogador insere um código na app, algo acontece no mundo físico (caixa abre)?
E vice-versa: como é que uma acção física (scan QR, colocar objecto) desbloqueia conteúdo digital?

---

## ABORDAGENS POSSÍVEIS

### NÍVEL 1: Separação Total (Mais Simples)
**Como funciona:** Físico e digital são independentes. App só valida/confirma.

```
FÍSICO                          DIGITAL
┌─────────────┐                ┌─────────────┐
│ Lock com    │                │ App mostra  │
│ código 0333 │  ← jogador →   │ "Código     │
│ (manual)    │   descobre     │ correcto!"  │
└─────────────┘                └─────────────┘
     ↓                              ↓
Jogador abre                  App desbloqueia
fisicamente                   conteúdo digital
```

**Prós:**
- Zero tech complexity
- Funciona offline
- Barato (locks de combinação ~€5)
- Impossível falhar tecnicamente

**Contras:**
- Jogador pode "fazer batota" (tentar todas as combinações)
- Menos imersivo
- App não "sabe" realmente se caixa foi aberta

**Jogos que usam:** Exit: The Game, maioria dos escape rooms caseiros

---

### NÍVEL 2: QR Codes como Ponte (Médio)
**Como funciona:** QR codes em documentos físicos desbloqueiam conteúdo na app.

```
FÍSICO                          DIGITAL
┌─────────────┐                ┌─────────────┐
│ Documento   │   scan QR      │ App mostra  │
│ com QR      │ ───────────→   │ conteúdo    │
│ escondido   │                │ secreto     │
└─────────────┘                └─────────────┘
```

**Implementação:**
- QR codes únicos por documento/fase
- App verifica se QR é válido para fase actual
- Pode ter QR "falsos" para red herrings

**Prós:**
- Interacção física-digital real
- App sabe que jogador encontrou documento específico
- Pode desbloquear áudio, vídeo, hints específicos
- Fácil de implementar (QR é só URL)

**Contras:**
- Jogador pode fotografar todos os QRs no início
- Precisa de smartphone com câmara

**Jogos que usam:** Chronicles of Crime, Unlock!

---

### NÍVEL 3: App Controla Locks Físicos (Avançado)
**Como funciona:** App envia sinal que abre lock electrónico.

```
FÍSICO                          DIGITAL
┌─────────────┐                ┌─────────────┐
│ Lock        │   Bluetooth    │ App envia   │
│ electrónico │ ←───────────   │ comando     │
│ (solenóide) │                │ "abrir"     │
└─────────────┘                └─────────────┘
```

**Implementação Técnica:**
```
Hardware necessário:
- ESP32 ou Arduino com Bluetooth
- Solenóide lock (12V)
- Relay module
- Bateria/fonte alimentação
- Caixa para electrónica

Custo estimado: €30-50 por lock

Código simplificado (Arduino):
1. ESP32 conecta à app via Bluetooth
2. App envia comando "OPEN_PHASE_1"
3. Arduino activa relay
4. Relay alimenta solenóide
5. Lock abre fisicamente
```

**Prós:**
- Máxima imersão ("wow factor")
- Impossível batota (só app pode abrir)
- App sabe exactamente o estado do jogo

**Contras:**
- Complexidade técnica alta
- Custo significativo
- Pode falhar (baterias, Bluetooth)
- Precisa de manutenção
- Mais difícil de produzir em escala

**Jogos que usam:** Escape rooms profissionais, instalações permanentes

---

### NÍVEL 4: NFC/RFID Tags (Alternativa Avançada)
**Como funciona:** Objectos físicos com tags NFC interagem com app.

```
FÍSICO                          DIGITAL
┌─────────────┐                ┌─────────────┐
│ Crucifixo   │   tap NFC      │ App detecta │
│ com tag NFC │ ───────────→   │ objecto e   │
│ escondida   │                │ reage       │
└─────────────┘                └─────────────┘
```

**Implementação:**
- Tags NFC (~€0.20 cada) coladas em objectos
- App lê tag quando jogador aproxima telemóvel
- Cada tag tem ID único → app sabe que objecto é

**Prós:**
- Interacção táctil real
- "Magia" de aproximar objecto do telefone
- Barato (tags são centimos)
- Sem baterias nos objectos

**Contras:**
- Nem todos os telemóveis têm NFC
- iPhone tem NFC limitado
- Jogador precisa saber onde aproximar

**Jogos que usam:** Alguns escape rooms premium, experiências de museu

---

## RECOMENDAÇÃO PARA ORFANATO

### Abordagem Híbrida: Nível 1 + Nível 2

**Para o MVP / Primeira Versão:**

```
┌────────────────────────────────────────────────────────────┐
│                    FLUXO PROPOSTO                          │
├────────────────────────────────────────────────────────────┤
│                                                            │
│  1. INÍCIO                                                 │
│     ┌──────────┐      ┌──────────┐                        │
│     │ QR na    │ scan │ App      │                        │
│     │ caixa    │─────→│ inicia   │                        │
│     └──────────┘      │ vídeo    │                        │
│                       └──────────┘                        │
│                            ↓                               │
│                       Vídeo termina                        │
│                       "Código: ???"                        │
│                            ↓                               │
│  2. FASE 1                                                 │
│     ┌──────────┐      ┌──────────┐                        │
│     │ Lock     │      │ Jogador  │                        │
│     │ físico   │←─────│ insere   │                        │
│     │ 0333     │      │ 0333     │                        │
│     └──────────┘      └──────────┘                        │
│          ↓                                                 │
│     Caixa abre                                            │
│     (confirmação opcional na app)                         │
│          ↓                                                 │
│  3. DOCUMENTOS FASE 1                                      │
│     ┌──────────┐      ┌──────────┐                        │
│     │ Alguns   │ scan │ App dá   │                        │
│     │ docs têm │─────→│ contexto │                        │
│     │ QR codes │      │ extra    │                        │
│     └──────────┘      └──────────┘                        │
│                                                            │
│  4. TRANSIÇÃO FASE 2                                       │
│     Jogadores descobrem código 1960                        │
│     Abrem próximo compartimento                            │
│     (podem confirmar na app se quiserem)                   │
│                                                            │
│  5. FASE 3 (DIGITAL)                                       │
│     ┌──────────┐      ┌──────────┐                        │
│     │ Código   │input │ App      │                        │
│     │ MIGUEL   │─────→│ desbloqueia│                       │
│     │          │      │ arquivo   │                        │
│     └──────────┘      └──────────┘                        │
│          ↓                                                 │
│     Fase 3 é 100% digital                                 │
│     (diário, fotos, relatórios)                           │
│                                                            │
│  6. FASE 4                                                 │
│     ┌──────────┐      ┌──────────┐                        │
│     │ Código   │      │ App      │                        │
│     │ 2008     │←─────│ revela   │                        │
│     │ (físico) │      │ código   │                        │
│     └──────────┘      └──────────┘                        │
│          ↓                                                 │
│     Última caixa física abre                              │
│                                                            │
│  7. CONCLUSÃO                                              │
│     ┌──────────┐      ┌──────────┐                        │
│     │ QR final │ scan │ Vídeo    │                        │
│     │ ou input │─────→│ conclusão│                        │
│     └──────────┘      └──────────┘                        │
│                                                            │
└────────────────────────────────────────────────────────────┘
```

### Decisões Específicas:

| Transição | Método Físico | Método Digital | Porque |
|-----------|---------------|----------------|--------|
| Início → Fase 1 | Lock combo 0333 | App valida código (opcional) | Simples, código óbvio do vídeo |
| Fase 1 → Fase 2 | Lock combo 1960 | App confirma (opcional) | Independente, funciona offline |
| Fase 2 → Fase 3 | N/A | App REQUER código MIGUEL | Digital-only phase |
| Fase 3 → Fase 4 | Lock combo 2008 | App revela o código | App "dá" o código como reward |
| Final | N/A | QR scan ou botão | Desbloqueia vídeo final |

### QR Codes nos Documentos (Opcional mas Recomendado)

**Onde colocar QR codes:**
- Verso da foto de Miguel (→ áudio: sussurro "não me esqueças")
- Canto do desenho de João (→ animação do desenho)
- Relatório médico de Sofia (→ som de água, choro)
- Carta de Beatriz (→ vídeo curto de depoimento)

**Benefício:** Camada extra de imersão sem complicar mecânica base.

---

## UPGRADE FUTURO: Locks Electrónicos

Se quiseres evoluir para Nível 3 no futuro:

### Hardware Kit por Caixa (~€40)

```
Componentes:
├── ESP32 DevKit (~€8)
├── Solenoid Lock 12V (~€5)
├── Relay Module 5V (~€2)
├── 12V Battery Pack (~€15)
├── Wiring + connectors (~€5)
└── 3D printed housing (~€5)

Total: ~€40 por compartimento
Para 3 compartimentos: ~€120
```

### Lógica da App (simplificada)

```javascript
// Web Bluetooth API (funciona em Chrome/Edge)
async function unlockPhase(phaseNumber) {
  const device = await navigator.bluetooth.requestDevice({
    filters: [{ name: 'Orfanato-Box' }]
  });

  const server = await device.gatt.connect();
  const service = await server.getPrimaryService('lock-service');
  const char = await service.getCharacteristic('unlock-command');

  // Envia comando para ESP32
  await char.writeValue(new Uint8Array([phaseNumber]));

  // Lock físico abre!
}
```

### Quando Considerar Este Upgrade

- Produção em série (10+ caixas)
- Venda como produto premium
- Experiências em local fixo (não portátil)
- Budget disponível para R&D

---

## RESUMO: O QUE FAZER AGORA

### MVP (Primeira Versão)

1. **Locks físicos de combinação** (3x ~€5 = €15)
   - 0333, 1960, 2008

2. **App PWA simples** com:
   - Vídeos (intro, conclusão)
   - Input de códigos (validação + feedback)
   - Arquivo digital (Fase 3)
   - Sistema de hints

3. **QR codes opcionais** em 4-5 documentos chave
   - Conteúdo extra (áudio, animações)
   - Não essenciais para resolver

4. **Conexão é NARRATIVA, não técnica**
   - App guia ("Agora abre o compartimento 1")
   - Jogadores confiam no sistema
   - Batota possível mas improvável (estraga a experiência)

### Vantagens desta Abordagem

| Aspecto | Benefício |
|---------|-----------|
| Custo | ~€20 em locks vs €120+ em electrónica |
| Fiabilidade | 100% (locks mecânicos não falham) |
| Portabilidade | Funciona sem WiFi/Bluetooth estável |
| Produção | Fácil de replicar |
| Manutenção | Zero |
| Timeline | Pode começar já |

---

## FONTES

- [Arduino RFID Escape Room](https://blog.arduino.cc/2018/05/16/an-arduino-based-rfid-tag-system-perfect-for-escape-rooms/)
- [NFC Design for Escape Rooms](https://nfcwork.com/building-nfc-connected-escape-rooms-a-technical-guide-for-enterprises/)
- [Phygital Escape Room Trends](https://www.escaperoomsupplier.com/phygital-trend-how-escape-rooms-can-benefit-from-physical-digital-puzzles/)
- [DIY Escape Room Lock Box](https://www.hackster.io/mportatoes/diy-escape-room-lock-box-prop-8670ca)
- [Controlling Lock with Arduino + Bluetooth](https://makezine.com/projects/controlling-a-lock-with-an-arudino-and-bluetooth-le)
- [Chronicles of Crime App Integration](https://www.thefamilygamers.com/chronicles-of-crime/)
- [Board Game Companion Apps](https://www.gameanalytics.com/blog/companion-apps-physical-digital)

---

*Research compiled: December 2024*
