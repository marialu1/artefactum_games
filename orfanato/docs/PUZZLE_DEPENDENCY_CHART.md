# PUZZLE DEPENDENCY CHART
## Orfanato Nossa Senhora das Dores

**Versão:** 1.0
**Data:** 8 Dezembro 2024
**Metodologia:** Ron Gilbert / LucasArts - "Start at the end, work backwards"

---

## REGRA DE OURO

> "Flowcharts are great if you're trying to SOLVE a game.
> Dependency charts are great if you're trying to DESIGN a game."
> — Ron Gilbert

Este documento mapeia TODAS as dependências do jogo: o que precisa do quê, e porquê.

---

# PARTE 1: O FIM (Começamos aqui)

## Objectivo Final do Jogador

```
┌─────────────────────────────────────────────────────────────┐
│                    VITÓRIA / FIM DO JOGO                     │
│                                                              │
│  "Compreender a verdade e libertar as almas das crianças"   │
└─────────────────────────────────────────────────────────────┘
```

### Para alcançar a vitória, o jogador precisa de:

| # | Requisito | Descrição |
|---|-----------|-----------|
| A | Conhecer as 3 crianças | Quem eram João, Sofia, Miguel |
| B | Saber como morreram | Circunstâncias de cada morte |
| C | Compreender o "porquê agora" | Porque vingança em Dez 2024 |
| D | Completar o ritual final | Acção simbólica de libertação |

---

# PARTE 2: TRABALHAR PARA TRÁS

## Nível 4 → FIM: O Ritual Final

```
┌─────────────────────────────────────────┐
│           COMPARTIMENTO FINAL           │
│              Código: 1960               │
└────────────────────┬────────────────────┘
                     │
        ┌────────────┴────────────┐
        │ PARA ABRIR PRECISA DE:  │
        └────────────┬────────────┘
                     │
    ┌────────────────┼────────────────┐
    │                │                │
    ▼                ▼                ▼
┌────────┐    ┌────────────┐    ┌──────────┐
│ Saber  │    │ Encontrar  │    │ Saber o  │
│ código │    │ referência │    │ que está │
│  1960  │    │ ao ano de  │    │  dentro  │
│        │    │ fundação   │    │ (motivo) │
└───┬────┘    └─────┬──────┘    └────┬─────┘
    │               │                │
    │    ┌──────────┴─────────┐      │
    │    │ DOCUMENTOS QUE     │      │
    │    │ MENCIONAM 1960:    │      │
    │    │ • Carta fundação   │      │
    │    │ • Registo inicial  │      │
    │    │ • Placa do edifício│      │
    │    └────────────────────┘      │
    │                                │
    └────────────────┬───────────────┘
                     │
         ┌───────────┴───────────┐
         │ REQUER ACESSO AO      │
         │ COMPARTIMENTO C (2008)│
         └───────────────────────┘
```

**Puzzle P6: O Ano de Fundação**
- **Input:** Múltiplas referências a 1960 em documentos
- **Solução:** 1960
- **Output:** Compartimento final abre
- **Conteúdo:** Carta de revelação, 3 objectos simbólicos, documento de "libertação"

---

## Nível 3 → Nível 4: As Três Histórias

```
┌─────────────────────────────────────────┐
│           COMPARTIMENTO C               │
│              Código: 2008               │
└────────────────────┬────────────────────┘
                     │
        ┌────────────┴────────────┐
        │ PARA ABRIR PRECISA DE:  │
        └────────────┬────────────┘
                     │
    ┌────────────────┼────────────────┐
    │                │                │
    ▼                ▼                ▼
┌──────────┐   ┌──────────┐   ┌──────────┐
│ Conhecer │   │ Saber o  │   │ Conectar │
│  Miguel  │   │ ano da   │   │ ao       │
│          │   │ morte    │   │ padrão   │
└────┬─────┘   └────┬─────┘   └────┬─────┘
     │              │              │
     │   ┌──────────┴──────────┐   │
     │   │ FONTES DO ANO 2008: │   │
     │   │ • Diário do Miguel  │   │
     │   │ • Recorte de jornal │   │
     │   │ • Testemunho Tomás  │   │
     │   │ • Registo óbito     │   │
     │   └─────────────────────┘   │
     │                             │
     └──────────────┬──────────────┘
                    │
        ┌───────────┴───────────┐
        │ REQUER ACESSO AO      │
        │ COMPARTIMENTO B       │
        │ (MIGUEL)              │
        └───────────────────────┘
```

**Puzzle P5: O Ano do Miguel**
- **Input:** Múltiplas fontes confirmam 2008
- **Solução:** 2008
- **Output:** Compartimento C abre
- **Conteúdo:** Autópsias das 3 crianças, cartas da Sofia, objectos pessoais

---

## Nível 2 → Nível 3: Os Arquivos

```
┌─────────────────────────────────────────┐
│           COMPARTIMENTO B               │
│             Código: MIGUEL              │
└────────────────────┬────────────────────┘
                     │
        ┌────────────┴────────────┐
        │ PARA ABRIR PRECISA DE:  │
        └────────────┬────────────┘
                     │
    ┌────────────────┼────────────────┐
    │                │                │
    ▼                ▼                ▼
┌──────────┐   ┌───────────┐   ┌──────────┐
│ Pista    │   │ Confirmar │   │ Saber    │
│ "6      │   │ que é um  │   │ porquê   │
│ letras"  │   │ nome      │   │ Miguel   │
└────┬─────┘   └─────┬─────┘   └────┬─────┘
     │               │              │
     │    ┌──────────┴──────────┐   │
     │    │ FONTES DE PISTAS:   │   │
     │    │ • Testemunho Helena │   │
     │    │   "6 letras, rapaz  │   │
     │    │    que lia"         │   │
     │    │ • Testemunho Ana    │   │
     │    │   "nome sussurrado" │   │
     │    │ • Autópsia freira   │   │
     │    │   "último a morrer" │   │
     │    └─────────────────────┘   │
     │                              │
     └──────────────┬───────────────┘
                    │
        ┌───────────┴───────────┐
        │ REQUER ACESSO AO      │
        │ COMPARTIMENTO A (0333)│
        └───────────────────────┘
```

**Puzzle P4: O Nome nas Sombras**
- **Input:** Pista críptica da Helena + contexto
- **Solução:** MIGUEL (6 letras)
- **Output:** Compartimento B abre
- **Conteúdo:** Diário do Miguel, arquivos de "transferências", chave antiga

---

## Nível 1 → Nível 2: A Hora da Morte

```
┌─────────────────────────────────────────┐
│           COMPARTIMENTO A               │
│              Código: 0333               │
└────────────────────┬────────────────────┘
                     │
        ┌────────────┴────────────┐
        │ PARA ABRIR PRECISA DE:  │
        └────────────┬────────────┘
                     │
    ┌────────────────┼────────────────┐
    │                │                │
    ▼                ▼                ▼
┌──────────┐   ┌───────────┐   ┌──────────┐
│ Notar a  │   │ Ver hora  │   │ Perceber │
│ hora     │   │ repetida  │   │ signifi- │
│ 3:33     │   │ em vários │   │ cado     │
│          │   │ docs      │   │          │
└────┬─────┘   └─────┬─────┘   └────┬─────┘
     │               │              │
     │    ┌──────────┴──────────┐   │
     │    │ FONTES DA HORA:     │   │
     │    │ • Testemunho Rosa   │   │
     │    │ • Testemunho Lucas  │   │
     │    │ • Testemunho Ana    │   │
     │    │ • Testemunho Padre  │   │
     │    │ • Vídeo introdução  │   │
     │    │ • Relatório policial│   │
     │    └─────────────────────┘   │
     │                              │
     └──────────────┬───────────────┘
                    │
        ┌───────────┴───────────┐
        │ ACESSÍVEL DESDE O     │
        │ INÍCIO (Envelope)     │
        └───────────────────────┘
```

**Puzzle P1: A Hora das Mortes**
- **Input:** Múltiplos testemunhos mencionam 3:33
- **Solução:** 0333
- **Output:** Compartimento A abre
- **Conteúdo:** Autópsias das freiras, fotos da cena, terço partido

---

## Nível 0: O Início

```
┌─────────────────────────────────────────┐
│              CAIXA INICIAL              │
│           (Acesso Imediato)             │
└────────────────────┬────────────────────┘
                     │
    ┌────────────────┼────────────────┐
    │                │                │
    ▼                ▼                ▼
┌──────────┐   ┌───────────┐   ┌──────────┐
│ Envelope │   │ QR Code   │   │ Objectos │
│ Processo │   │ para App  │   │ visíveis │
│ 2847/2024│   │           │   │          │
└────┬─────┘   └─────┬─────┘   └────┬─────┘
     │               │              │
     ▼               ▼              ▼
┌──────────┐   ┌───────────┐   ┌──────────┐
│• Carta   │   │• Vídeo    │   │• Mapa do │
│  intro   │   │  intro    │   │  orfanato│
│• 5 teste-│   │• Sistema  │   │• Lupa?   │
│  munhos  │   │  pistas   │   │• Lanterna│
│• Contexto│   │• Verifica-│   │  UV?     │
│          │   │  ção códs │   │          │
└──────────┘   └───────────┘   └──────────┘
```

---

# PARTE 3: DIAGRAMA COMPLETO

```
                              ┌─────────────┐
                              │   INÍCIO    │
                              │  (Caixa)    │
                              └──────┬──────┘
                                     │
                    ┌────────────────┼────────────────┐
                    │                │                │
                    ▼                ▼                ▼
              ┌──────────┐    ┌──────────┐    ┌──────────┐
              │Testemunho│    │Testemunho│    │Testemunho│
              │   Rosa   │    │  Lucas   │    │   Ana    │
              │ (3:33)   │    │ (3:30)   │    │ (3:33)   │
              └────┬─────┘    └────┬─────┘    └────┬─────┘
                   │               │               │
                   └───────────────┼───────────────┘
                                   │
                           ┌───────▼───────┐
                           │   PUZZLE P1   │
                           │   Código:     │
                           │     0333      │
                           └───────┬───────┘
                                   │
                         ┌─────────▼─────────┐
                         │ COMPARTIMENTO A   │
                         │ • Autópsias freiras│
                         │ • Fotos cena      │
                         │ • Terço partido   │
                         └─────────┬─────────┘
                                   │
                   ┌───────────────┼───────────────┐
                   │               │               │
                   ▼               ▼               ▼
             ┌──────────┐   ┌──────────┐   ┌──────────┐
             │ Autópsia │   │ Autópsia │   │ Autópsia │
             │Conceição │   │ Beatriz  │   │  Carmo   │
             │(quedas)  │   │(queimad) │   │(afogam)  │
             └────┬─────┘   └────┬─────┘   └────┬─────┘
                  │              │              │
                  │    ┌─────────┴─────────┐    │
                  │    │ Padrão: 3 tipos   │    │
                  │    │ de morte = 3      │    │
                  │    │ crianças          │    │
                  │    └─────────┬─────────┘    │
                  │              │              │
                  └──────────────┼──────────────┘
                                 │
                      ┌──────────▼──────────┐
                      │  Test. Irmã Helena  │
                      │  "6 letras, rapaz   │
                      │   que lia"          │
                      └──────────┬──────────┘
                                 │
                         ┌───────▼───────┐
                         │   PUZZLE P4   │
                         │   Código:     │
                         │    MIGUEL     │
                         └───────┬───────┘
                                 │
                       ┌─────────▼─────────┐
                       │ COMPARTIMENTO B   │
                       │ • Diário Miguel   │
                       │ • Arquivos antigos│
                       │ • Chave antiga    │
                       └─────────┬─────────┘
                                 │
                 ┌───────────────┼───────────────┐
                 │               │               │
                 ▼               ▼               ▼
           ┌──────────┐   ┌──────────┐   ┌──────────┐
           │ Diário   │   │ Registo  │   │Testemunho│
           │ Miguel   │   │"Transfer"│   │  Tomás   │
           │ (2008)   │   │ (nomes)  │   │ (2008)   │
           └────┬─────┘   └────┬─────┘   └────┬─────┘
                │              │              │
                └──────────────┼──────────────┘
                               │
                       ┌───────▼───────┐
                       │   PUZZLE P5   │
                       │   Código:     │
                       │     2008      │
                       └───────┬───────┘
                               │
                     ┌─────────▼─────────┐
                     │ COMPARTIMENTO C   │
                     │ • Autópsias 3     │
                     │   crianças        │
                     │ • Cartas Sofia    │
                     │ • Objectos        │
                     └─────────┬─────────┘
                               │
               ┌───────────────┼───────────────┐
               │               │               │
               ▼               ▼               ▼
         ┌──────────┐   ┌──────────┐   ┌──────────┐
         │ Autópsia │   │ Cartas   │   │ Autópsia │
         │  João    │   │  Sofia   │   │  Miguel  │
         │ (1973)   │   │ (1987)   │   │ (2008)   │
         └────┬─────┘   └────┬─────┘   └────┬─────┘
              │              │              │
              │    ┌─────────┴─────────┐    │
              │    │ Compreensão total │    │
              │    │ das 3 mortes      │    │
              │    └─────────┬─────────┘    │
              │              │              │
              └──────────────┼──────────────┘
                             │
                  ┌──────────▼──────────┐
                  │  Carta de Fundação  │
                  │  ou referência a    │
                  │      1960           │
                  └──────────┬──────────┘
                             │
                     ┌───────▼───────┐
                     │   PUZZLE P6   │
                     │   Código:     │
                     │     1960      │
                     └───────┬───────┘
                             │
                   ┌─────────▼─────────┐
                   │COMPARTIMENTO FINAL│
                   │ • Carta revelação │
                   │ • Doc. libertação │
                   │ • 3 objectos      │
                   └─────────┬─────────┘
                             │
                     ┌───────▼───────┐
                     │     FIM       │
                     │  (App: vídeo  │
                     │   conclusão)  │
                     └───────────────┘
```

---

# PARTE 4: LISTA DE PUZZLES DETALHADA

## P1: A Hora das Mortes

| Campo | Valor |
|-------|-------|
| **Código** | 0333 |
| **Tipo** | Extracção de informação |
| **Dificuldade** | Fácil (1/5) |
| **Tempo estimado** | 10-15 min |
| **Pistas necessárias** | 2-3 testemunhos |

### Como o jogador descobre:
1. Lê testemunho da Rosa: "Acordei às 3:33. Ouvi crianças."
2. Lê testemunho do Lucas: "Vi vulto às 03:30... barulho às 3:33"
3. Lê testemunho da Ana: "Às 3:33 senti algo ACONTECER"
4. Vídeo introdução também menciona a hora
5. **Padrão claro:** 3:33 = código

### Sistema de pistas (app):
- **Pista 1:** "Presta atenção às horas nos testemunhos."
- **Pista 2:** "Vários testemunhos mencionam a mesma hora. Que hora é?"
- **Pista 3:** "O código é 0333 - a hora da morte."

---

## P4: O Nome nas Sombras

| Campo | Valor |
|-------|-------|
| **Código** | MIGUEL |
| **Tipo** | Dedução + cipher leve |
| **Dificuldade** | Médio (3/5) |
| **Tempo estimado** | 20-30 min |
| **Pistas necessárias** | Testemunho Helena + contexto |

### Como o jogador descobre:
1. Lê testemunho da Irmã Helena: "Seis letras. O rapaz que gostava de ler."
2. Já sabe das autópsias que Miguel "fazia perguntas, lia muito"
3. Conta letras: M-I-G-U-E-L = 6
4. Confirma com outras referências ao Miguel
5. **Dedução:** MIGUEL é o código

### Sistema de pistas (app):
- **Pista 1:** "A Irmã Helena deu uma pista críptica. Relê o testemunho dela."
- **Pista 2:** "Ela fala de 'seis letras' e 'o rapaz que gostava de ler'. Que criança lia muito?"
- **Pista 3:** "O código é MIGUEL - o nome tem 6 letras."

---

## P5: O Ano do Miguel

| Campo | Valor |
|-------|-------|
| **Código** | 2008 |
| **Tipo** | Conexão de datas |
| **Dificuldade** | Fácil-Médio (2/5) |
| **Tempo estimado** | 10-15 min |
| **Pistas necessárias** | Diário Miguel + recorte jornal |

### Como o jogador descobre:
1. Diário do Miguel tem data: "15 de Novembro de 2008"
2. Última entrada: "Descobri algo terrível. Vou contar ao Padre."
3. Recorte de jornal: "Criança morre em orfanato de Sintra - 2008"
4. Testemunho Tomás: "estava presente na noite da morte do Miguel"
5. **Conexão:** 2008 é o código

### Sistema de pistas (app):
- **Pista 1:** "Que ano aparece no diário do Miguel?"
- **Pista 2:** "O diário e o recorte de jornal partilham uma data. Qual é o ano?"
- **Pista 3:** "O código é 2008 - o ano em que Miguel morreu."

---

## P6: O Ano de Fundação

| Campo | Valor |
|-------|-------|
| **Código** | 1960 |
| **Tipo** | Conexão histórica |
| **Dificuldade** | Médio (3/5) |
| **Tempo estimado** | 15-20 min |
| **Pistas necessárias** | Carta fundação + contexto |

### Como o jogador descobre:
1. Carta de fundação do orfanato: "inaugurado em 1960"
2. Referência no registo de transferências: "desde a fundação em 1960"
3. Possível: placa fotografada, carimbo em documento
4. Compreende: o ciclo começou em 1960, termina agora
5. **Conexão:** 1960 é o código final

### Sistema de pistas (app):
- **Pista 1:** "Quando é que tudo começou? Procura a data de fundação."
- **Pista 2:** "Há uma carta ou documento oficial que menciona quando o orfanato abriu."
- **Pista 3:** "O código é 1960 - o ano de fundação do orfanato."

---

# PARTE 5: PUZZLES SECUNDÁRIOS (OPCIONAIS)

Estes puzzles enriquecem a experiência mas NÃO bloqueiam progressão:

## P2: Cipher da Sofia (Opcional)

| Campo | Valor |
|-------|-------|
| **Tipo** | Cipher/código escondido |
| **Dificuldade** | Difícil (4/5) |
| **Recompensa** | Easter egg / história adicional |

### Descrição:
Nas cartas da Sofia, letras específicas estão sublinhadas ou em posição diferente. Juntas, formam uma mensagem escondida:

"AJUDEM-NOS"

### Propósito:
- Não é necessário para avançar
- Adiciona camada emocional
- Recompensa jogadores atentos

---

## P3: Sobreposição de Mapas (Opcional)

| Campo | Valor |
|-------|-------|
| **Tipo** | Puzzle visual/físico |
| **Dificuldade** | Médio (3/5) |
| **Recompensa** | Localização da cave |

### Descrição:
- Mapa do orfanato (no envelope inicial)
- Mapa antigo transparente (no Compartimento B)
- Sobreposição revela: localização exacta da cave

### Propósito:
- Satisfação de descoberta física
- Não bloqueia progressão (cave é mencionada nos testemunhos)

---

## P4b: UV Light (Opcional, se incluído)

| Campo | Valor |
|-------|-------|
| **Tipo** | Revelação com luz UV |
| **Dificuldade** | Fácil (1/5) |
| **Recompensa** | Mensagens escondidas |

### Descrição:
Se a caixa incluir lanterna UV:
- Autópsias têm notas invisíveis do Dr. António
- Cartas da Sofia têm desenhos escondidos
- Mapa tem marcações secretas

### Propósito:
- Experiência física satisfatória
- Camada adicional de descoberta

---

# PARTE 6: DEPENDÊNCIAS EM TABELA

## Matriz de Dependências

| Para Obter | Precisa De | Código |
|------------|------------|--------|
| Compartimento A | Ler testemunhos (hora) | 0333 |
| Compartimento B | Compartimento A + testemunho Helena | MIGUEL |
| Compartimento C | Compartimento B + diário Miguel | 2008 |
| Compartimento Final | Compartimento C + carta fundação | 1960 |
| Vitória | Compartimento Final + app | N/A |

## Conteúdo de Cada Compartimento

| Compartimento | Código | Conteúdo | Propósito |
|---------------|--------|----------|-----------|
| **Envelope Inicial** | N/A | 5 testemunhos, carta intro, mapa, QR | Setup inicial |
| **A** | 0333 | 3 autópsias freiras, fotos, terço | Revelar mortes impossíveis |
| **B** | MIGUEL | Diário, arquivos, chave | Revelar história do Miguel |
| **C** | 2008 | 3 autópsias crianças, cartas Sofia, objectos | Revelar verdade completa |
| **Final** | 1960 | Carta revelação, doc. libertação, 3 símbolos | Conclusão + catarse |

---

# PARTE 7: FLUXO ALTERNATIVO (Bottlenecks)

## Estrutura em Diamante

```
ACTO 1: Abertura
         │
    ┌────┴────┐
    │BOTTLENECK│ ← Código 0333 (único caminho)
    └────┬────┘
         │
    ┌────┴────────────┬────────────────┐
    │                 │                │
    ▼                 ▼                ▼
 Thread A         Thread B         Thread C
 (Autópsias)     (Testemunhos)    (História)
    │                 │                │
    └────────┬────────┴────────┬───────┘
             │                 │
        ┌────┴────┐       (paralelo)
        │BOTTLENECK│ ← Código MIGUEL
        └────┬────┘
             │
    ┌────────┴────────────┬────────────────┐
    │                     │                │
    ▼                     ▼                ▼
 João 1973           Sofia 1987       Miguel 2008
    │                     │                │
    └─────────┬───────────┴───────┬────────┘
              │                   │
         ┌────┴────┐         (paralelo)
         │BOTTLENECK│ ← Código 2008
         └────┬────┘
              │
    ┌─────────┴─────────────┬─────────────────┐
    │                       │                 │
    ▼                       ▼                 ▼
 Compreensão           Empatia           Resolução
    │                       │                 │
    └──────────┬────────────┴────────┬────────┘
               │                     │
          ┌────┴────┐           (convergir)
          │BOTTLENECK│ ← Código 1960
          └────┬────┘
               │
               ▼
             FIM
```

### Regras dos Bottlenecks:

1. **Cada bottleneck tem UM código** - não há atalhos
2. **Entre bottlenecks há liberdade** - jogador pode ler docs em qualquer ordem
3. **Informação converge** - múltiplas fontes apontam para o mesmo código
4. **Nunca há dead-ends** - todas as pistas levam a algum lado

---

# PARTE 8: VERIFICAÇÃO DE DESIGN

## Checklist de Qualidade

### Fairness (Justiça)
- [x] Todas as soluções são deduzíveis dos materiais fornecidos
- [x] Não há conhecimento externo necessário
- [x] Pistas redundantes para cada código (múltiplas fontes)
- [x] Sistema de ajuda disponível

### Flow (Fluxo)
- [x] Progressão clara (Início → 0333 → MIGUEL → 2008 → 1960 → Fim)
- [x] Momentos de descoberta espaçados
- [x] Variedade de tipos de puzzle
- [x] Não há bottlenecks frustrantes (puzzles curtos nos pontos críticos)

### Narrative (Narrativa)
- [x] Cada descoberta avança a história
- [x] Emoção cresce ao longo do jogo
- [x] Clímax satisfatório
- [x] Todas as questões respondidas no final

### Physical (Físico)
- [x] Conteúdo suficiente em cada compartimento
- [x] Objectos físicos têm propósito
- [x] Proporção papel/objectos equilibrada
- [ ] A VERIFICAR: Tamanho da caixa adequado

---

# PARTE 9: PRÓXIMOS PASSOS

Com o dependency chart completo, podemos agora:

## Imediato (Fase 2)
1. **Escrever documentos Tier 1** - os que contêm puzzles
   - Autópsias das freiras (pistas para padrão)
   - Testemunho Helena (MIGUEL hint) ✅ já existe
   - Diário do Miguel (2008)
   - Carta de fundação (1960)

2. **Escrever documentos Tier 2** - contexto
   - Autópsias das crianças
   - Cartas da Sofia
   - Recortes de jornal

## Depois
3. **Playtest em papel** - testar fluxo
4. **Design da caixa** - compartimentos físicos
5. **Design da app** - wireframes

---

*Documento criado: 8 Dezembro 2024*
*Metodologia: Ron Gilbert Puzzle Dependency Charts*
*Versão: 1.0*
