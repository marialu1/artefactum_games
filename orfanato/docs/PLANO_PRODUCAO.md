# PLANO DE PRODUÇÃO: ORFANATO NOSSA SENHORA DAS DORES

**Versão:** 1.0
**Data:** 8 Dezembro 2024
**Baseado em:** Metodologias profissionais de escape room design, Hunt A Killer, e puzzle dependency charts

---

## METODOLOGIA ADOPTADA

Este plano segue práticas da indústria de escape rooms e mystery boxes:

1. **Puzzle Dependency Charts** (Ron Gilbert/LucasArts) - Desenhar puzzles de trás para a frente
2. **Hunt A Killer Production Pipeline** - Autenticidade de materiais, period-accurate details
3. **Iterative Design** - Protótipos em papel antes de produção
4. **Bottleneck Design** - Estrutura em diamante (abrir → múltiplos caminhos → convergir)

**Fontes:**
- [Puzzle Dependency Charts - Grumpy Gamer](https://grumpygamer.com/puzzle_dependency_charts/)
- [Hunt A Killer Design Process](https://www.starterstory.com/hunt-a-killer-mystery-game)
- [Bottlenecks in Immersive Design](https://strangebirdimmersive.com/immersology/bottlenecks/)
- [Iterative Narrative Design](https://www.gamedeveloper.com/production/iterative-narrative-design-for-video-games-an-indie-approach)

---

# VISÃO GERAL DO PROJECTO

## O Produto Final

**Nome:** Orfanato Nossa Senhora das Dores
**Tipo:** Mystery box híbrida (caixa física + app companion)
**Duração:** 3-5 horas de gameplay
**Jogadores:** 1-4
**Idade:** 16+ (trigger warnings)

### Componentes Finais

```
CAIXA FÍSICA                         APP COMPANION
├── Envelope "Processo 2847/2024"    ├── Vídeos de testemunhos
├── Documentos da investigação       ├── Sistema de pistas
├── Objectos físicos (props)         ├── Verificação de códigos
├── Compartimentos com fechaduras    ├── Áudio ambiente
└── Carta final selada               └── Revelação final
```

---

# FASES DE PRODUÇÃO

## FASE 0: PRÉ-PRODUÇÃO (Onde estamos)
**Duração estimada:** 2-3 semanas
**Objectivo:** Completar toda a narrativa e design antes de produzir

### 0.1 Inventário Actual

| Categoria | Documento | Status | Linhas |
|-----------|-----------|--------|--------|
| **Design** | ORFANATO_MASTER.md | ✅ Completo | 537 |
| **Personagens** | 4 ficheiros | ✅ Completo | ~3160 |
| **Testemunhos** | 11 ficheiros | ✅ Completo | ~1614 |
| **Técnico** | 4 ficheiros de pesquisa | ✅ Completo | ~800 |
| **TOTAL** | | | ~6100 |

### 0.2 O Que Falta (Pré-Produção)

#### Narrativa (Documentos In-Game)
| Documento | Descrição | Prioridade | Status |
|-----------|-----------|------------|--------|
| Autópsias das freiras | 3 relatórios médico-legais | 🔴 Alta | ❌ |
| Autópsias das crianças | 3 relatórios históricos (1973, 1987, 2008) | 🔴 Alta | ❌ |
| Cartas da Sofia | Voz da criança antes de morrer | 🔴 Alta | ❌ |
| Diário do Miguel | Descobertas nos arquivos | 🔴 Alta | ❌ |
| Desenhos do João | Criança de 1973 | 🟡 Média | ❌ |
| Recortes de jornal | 4 épocas diferentes | 🟡 Média | ❌ |
| Registos do orfanato | Admissões, transferências | 🟡 Média | ❌ |
| Fotografias descritas | Para referência visual | 🟢 Baixa | ❌ |

#### Game Design
| Documento | Descrição | Prioridade | Status |
|-----------|-----------|------------|--------|
| PUZZLE_DEPENDENCY_CHART.md | Fluxo de puzzles e dependências | 🔴 Alta | ❌ |
| PUZZLE_SOLUTIONS.md | Cada puzzle com solução | 🔴 Alta | ❌ |
| HINT_SYSTEM.md | Sistema de pistas progressivas | 🔴 Alta | ❌ |
| PLAYER_JOURNEY.md | Experiência minuto-a-minuto | 🔴 Alta | ❌ |

---

## FASE 1: DESIGN DE PUZZLES
**Duração estimada:** 2-3 semanas
**Objectivo:** Criar o fluxo completo de puzzles antes de escrever conteúdo

### 1.1 Metodologia: Puzzle Dependency Chart

> "A primeira regra é começar pelo fim e trabalhar para trás."
> — Ron Gilbert, LucasArts

#### Passo 1: Definir o Fim
```
OBJECTIVO FINAL DO JOGADOR:
"Descobrir a verdade sobre as mortes e libertar as almas das crianças"

Para isso precisa de:
├── Saber QUEM eram as crianças (João, Sofia, Miguel)
├── Saber O QUE lhes aconteceu (como morreram)
├── Saber PORQUÊ as freiras morreram agora (vingança)
└── Fazer o RITUAL de libertação (acção final)
```

#### Passo 2: Trabalhar para Trás
```
Para saber quem eram as crianças:
├── Precisa de: Acesso aos arquivos antigos
│   └── Bloqueado por: Código MIGUEL (6 letras)
│       └── Pista em: Testemunho da Irmã Helena

Para saber o que lhes aconteceu:
├── Precisa de: Relatórios de autópsia
│   └── Bloqueado por: Compartimento com código 2008
│       └── Pista em: Ano da morte do Miguel

Para saber porquê agora:
├── Precisa de: Entender a data 3:33 / 7 Dezembro
│   └── Bloqueado por: Código 0333
│       └── Pista em: Múltiplos testemunhos

Para fazer o ritual:
├── Precisa de: 3 objectos das crianças + local
│   └── Bloqueado por: Compartimento final
│       └── Código: 1960 (ano de fundação)
```

### 1.2 Estrutura em Diamante (Bottleneck Design)

```
                    ┌─────────────────┐
                    │   INÍCIO        │
                    │ (Abrir a caixa) │
                    └────────┬────────┘
                             │
              ┌──────────────┼──────────────┐
              │              │              │
              ▼              ▼              ▼
        ┌──────────┐  ┌──────────┐  ┌──────────┐
        │ THREAD A │  │ THREAD B │  │ THREAD C │
        │ Freiras  │  │ Crianças │  │ Lugar    │
        │ (quem)   │  │ (porquê) │  │ (como)   │
        └────┬─────┘  └────┬─────┘  └────┬─────┘
             │              │              │
             └──────────────┼──────────────┘
                            │
                    ┌───────▼───────┐
                    │  BOTTLENECK 1 │
                    │  (Código 0333)│
                    └───────┬───────┘
                            │
              ┌─────────────┼─────────────┐
              │             │             │
              ▼             ▼             ▼
        ┌──────────┐  ┌──────────┐  ┌──────────┐
        │  João    │  │  Sofia   │  │  Miguel  │
        │  1973    │  │  1987    │  │  2008    │
        └────┬─────┘  └────┬─────┘  └────┬─────┘
             │             │             │
             └─────────────┼─────────────┘
                           │
                   ┌───────▼───────┐
                   │  BOTTLENECK 2 │
                   │ (Código 1960) │
                   └───────┬───────┘
                           │
                   ┌───────▼───────┐
                   │   REVELAÇÃO   │
                   │    FINAL      │
                   └───────────────┘
```

### 1.3 Lista de Puzzles (Draft)

| # | Puzzle | Input | Output | Dificuldade |
|---|--------|-------|--------|-------------|
| P1 | Ler testemunhos, encontrar hora comum | Documentos | Código 0333 | Fácil |
| P2 | Decifrar pista da Helena "6 letras" | Testemunho | Código MIGUEL | Médio |
| P3 | Cruzar datas de morte | Autópsias | Código 2008 | Médio |
| P4 | Puzzle visual (sobreposição?) | Props físicos | Localização cave | Médio |
| P5 | Cipher/código nas cartas da Sofia | Cartas | Palavra-chave | Difícil |
| P6 | Puzzle final (3 objectos) | Objectos | Código 1960 | Médio |

### 1.4 Deliverables Fase 1

- [ ] PUZZLE_DEPENDENCY_CHART.md (diagrama completo)
- [ ] PUZZLE_SOLUTIONS.md (cada puzzle detalhado)
- [ ] Playtest em papel (testar fluxo sem produzir)

---

## FASE 2: ESCRITA DE CONTEÚDO IN-GAME
**Duração estimada:** 3-4 semanas
**Objectivo:** Escrever todos os documentos que o jogador vai ler

### 2.1 Documentos a Criar

#### Tier 1: Essenciais (bloqueiam progressão)
| Documento | Páginas | Contém Puzzle? | Prioridade |
|-----------|---------|----------------|------------|
| Autópsia Irmã Conceição | 2 | Sim (hora da morte) | 🔴 |
| Autópsia Irmã Beatriz | 2 | Sim (causa impossível) | 🔴 |
| Autópsia Irmã Carmo | 2 | Sim (padrão) | 🔴 |
| Carta Sofia #1 | 1 | Sim (cipher) | 🔴 |
| Carta Sofia #2 | 1 | Sim (cipher cont.) | 🔴 |
| Diário Miguel (3 entradas) | 3 | Sim (descobertas) | 🔴 |
| Registo de "transferências" | 1 | Sim (nomes desaparecidos) | 🔴 |

#### Tier 2: Contexto (enriquecem história)
| Documento | Páginas | Contém Puzzle? | Prioridade |
|-----------|---------|----------------|------------|
| Recorte jornal 1973 | 0.5 | Não | 🟡 |
| Recorte jornal 1987 | 0.5 | Não | 🟡 |
| Recorte jornal 2008 | 0.5 | Não | 🟡 |
| Recorte jornal 2024 | 0.5 | Não | 🟡 |
| Autópsia João (1973) | 1 | Parcial | 🟡 |
| Autópsia Sofia (1987) | 1 | Parcial | 🟡 |
| Autópsia Miguel (2008) | 1 | Parcial | 🟡 |
| Carta fundação orfanato | 1 | Sim (1960) | 🟡 |

#### Tier 3: Atmosfera (opcionais)
| Documento | Páginas | Contém Puzzle? | Prioridade |
|-----------|---------|----------------|------------|
| Desenhos do João | Visual | Não | 🟢 |
| Fotografias antigas | Visual | Possível | 🟢 |
| Menu de refeições | 0.5 | Easter egg | 🟢 |
| Regras do orfanato | 1 | Não | 🟢 |

### 2.2 Estilo de Escrita (Hunt A Killer Method)

**Autenticidade é crucial:**

- Documentos policiais: Linguagem formal portuguesa, carimbos, assinaturas
- Cartas de crianças: Erros ortográficos apropriados à idade, caligrafia infantil
- Jornais: Formato de época (1973 diferente de 2024)
- Autópsias: Terminologia médica real, formato oficial

**Detalhes físicos a considerar:**
- Papel envelhecido para documentos antigos
- Manchas de água nas cartas da Sofia
- Marcas de fogo nos documentos do João
- Carimbos "CONFIDENCIAL" e "ARQUIVADO"

### 2.3 Deliverables Fase 2

- [ ] Todos os documentos Tier 1 escritos
- [ ] Todos os documentos Tier 2 escritos
- [ ] Documentos Tier 3 (opcionais)
- [ ] Revisão de consistência narrativa
- [ ] Revisão de puzzles integrados

---

## FASE 3: DESIGN DA CAIXA FÍSICA
**Duração estimada:** 2-3 semanas
**Objectivo:** Definir exactamente o que vai na caixa

### 3.1 Estrutura da Caixa

```
CAIXA EXTERIOR (aparência de arquivo policial)
│
├── CAMADA 1: Acessível imediatamente
│   ├── Envelope "PROCESSO 2847/2024"
│   │   ├── Carta introdutória (contexto)
│   │   ├── 5 testemunhos seleccionados
│   │   └── Mapa do orfanato
│   ├── QR Code para app
│   └── Instruções básicas
│
├── COMPARTIMENTO A: Código 0333
│   ├── Autópsias das 3 freiras
│   ├── Fotografias da cena do crime
│   └── Objecto: Terço partido
│
├── COMPARTIMENTO B: Código MIGUEL
│   ├── Arquivos antigos (transferências)
│   ├── Diário do Miguel
│   └── Objecto: Chave antiga
│
├── COMPARTIMENTO C: Código 2008
│   ├── Autópsias das 3 crianças
│   ├── Cartas da Sofia
│   └── Objecto: Boneca de pano
│
└── COMPARTIMENTO FINAL: Código 1960
    ├── Carta final (revelação)
    ├── Documento de "libertação"
    └── 3 objectos para ritual final
```

### 3.2 Lista de Props Físicos

| Prop | Descrição | Propósito | Custo Est. |
|------|-----------|-----------|------------|
| Terço partido | Contas de madeira, cruz partida | Pertencia à Conceição | €5-10 |
| Chave antiga | Estilo vintage, oxidada | Abre "cave" simbólica | €3-5 |
| Boneca de pano | Pequena, gasta, olhos de botão | Pertencia à Sofia | €10-15 |
| Fita de cabelo | Azul desbotada | Da Sofia | €2 |
| Desenho queimado | Papel com bordas queimadas | Do João | €1 |
| Medalha religiosa | Nossa Senhora das Dores | Do orfanato | €5 |
| Fotografia antiga | Impressão sépia, grupo de crianças | Atmosfera | €2 |

### 3.3 Sistema de Fechaduras

**Opções (ver TECHNICAL_ELECTRONIC_LOCKS.md):**
1. Fechaduras de combinação física (mais barato, €5-15 cada)
2. Fechaduras electrónicas com app (mais imersivo, €20-50 cada)
3. Sistema híbrido (algumas físicas, final electrónica)

### 3.4 Deliverables Fase 3

- [ ] Design final da caixa (medidas, compartimentos)
- [ ] Lista de materiais completa
- [ ] Orçamento detalhado
- [ ] Fornecedores identificados
- [ ] Protótipo em cartão

---

## FASE 4: DESIGN DA APP COMPANION
**Duração estimada:** 3-4 semanas
**Objectivo:** Especificar funcionalidades e criar wireframes

### 4.1 Funcionalidades Core

| Funcionalidade | Descrição | Prioridade |
|----------------|-----------|------------|
| Verificação de códigos | Jogador insere código, app confirma | 🔴 |
| Vídeos de testemunhos | Actores a ler testemunhos | 🔴 |
| Sistema de pistas | 3 níveis de ajuda por puzzle | 🔴 |
| Áudio ambiente | Sons do orfanato, música | 🟡 |
| Timer opcional | Para quem quer desafio | 🟡 |
| Galeria de documentos | Versão digital dos docs | 🟢 |

### 4.2 Fluxo de Ecrãs

```
[Splash Screen]
      │
      ▼
[Menu Principal]
├── Iniciar Investigação
├── Continuar
├── Pistas
└── Sobre
      │
      ▼
[Introdução - Vídeo]
      │
      ▼
[Hub Principal]
├── Inserir Código ──► [Teclado] ──► [Sucesso/Erro]
├── Ver Pistas ──► [Seleccionar Puzzle] ──► [Pista 1/2/3]
├── Testemunhos ──► [Lista] ──► [Vídeo]
└── Progresso ──► [Checklist visual]
      │
      ▼
[Revelação Final - Vídeo]
```

### 4.3 Conteúdo de Vídeo Necessário

| Vídeo | Duração | Actor/Formato | Prioridade |
|-------|---------|---------------|------------|
| Introdução | 2-3 min | Narrador + imagens | 🔴 |
| Testemunho Francisca | 3-4 min | Actriz 70+ | 🟡 |
| Testemunho Manuel | 2-3 min | Actor 70+ | 🟡 |
| Testemunho Ana | 2-3 min | Actriz 15 | 🟡 |
| Revelação Final | 3-5 min | Narrador + visuals | 🔴 |

**Alternativa low-budget:** Áudio + imagens estáticas + texto

### 4.4 Deliverables Fase 4

- [ ] Wireframes de todos os ecrãs
- [ ] Especificação técnica
- [ ] Lista de assets necessários
- [ ] Decisão: vídeo vs áudio+imagens
- [ ] Protótipo clickável (Figma/similar)

---

## FASE 5: PLAYTEST EM PAPEL
**Duração estimada:** 1-2 semanas
**Objectivo:** Testar o jogo ANTES de produzir

### 5.1 Metodologia

> "Craft paper prototypes and playtest through the complete mystery on paper before moving into production."
> — Game Developer best practices

#### O Que Testar
1. **Fluxo narrativo:** A história faz sentido?
2. **Dificuldade dos puzzles:** Muito fácil? Muito difícil?
3. **Tempo total:** Quanto demora realmente?
4. **Bottlenecks:** Há pontos onde jogadores ficam presos?
5. **Emoção:** Os momentos-chave têm impacto?

#### Como Testar
1. Imprimir todos os documentos em papel normal
2. Criar "caixa" com envelopes/pastas
3. Convidar 2-3 grupos de teste (amigos, família)
4. Observar SEM ajudar
5. Entrevistar depois
6. Iterar baseado no feedback

### 5.2 Métricas a Registar

| Métrica | Como Medir | Objectivo |
|---------|------------|-----------|
| Tempo total | Cronómetro | 3-5 horas |
| Puzzles onde pediram ajuda | Contagem | <3 por grupo |
| Momentos de frustração | Observação | Identificar problemas |
| Momentos de satisfação | Observação | Manter/amplificar |
| Compreensão da história | Entrevista | 100% |

### 5.3 Deliverables Fase 5

- [ ] Protótipo em papel completo
- [ ] 3+ sessões de playtest
- [ ] Relatório de feedback
- [ ] Lista de alterações necessárias
- [ ] Versão revista dos documentos

---

## FASE 6: PRODUÇÃO
**Duração estimada:** 4-6 semanas
**Objectivo:** Produzir a versão final

### 6.1 Produção de Documentos

| Tarefa | Detalhes |
|--------|----------|
| Design gráfico | Layout de cada documento |
| Tipografia | Fontes de época, máquina de escrever |
| Envelhecimento | Técnicas para parecer antigo |
| Impressão | Qualidade profissional |
| Acabamentos | Carimbos, assinaturas, manchas |

### 6.2 Produção da Caixa

| Tarefa | Detalhes |
|--------|----------|
| Protótipo final | Caixa de teste com medidas exactas |
| Materiais | Encomendar madeira/cartão/fecho |
| Montagem | Construir ou encomendar |
| Pintura/acabamento | Aspecto de arquivo antigo |
| Fechaduras | Instalar e testar |

### 6.3 Produção da App

| Tarefa | Detalhes |
|--------|----------|
| Desenvolvimento | React Native / Flutter / Web |
| Assets visuais | UI, ícones, backgrounds |
| Áudio | Gravação, edição, mixing |
| Vídeo (se aplicável) | Filmagem, edição |
| Testes | QA em múltiplos dispositivos |

### 6.4 Deliverables Fase 6

- [ ] Documentos impressos e tratados
- [ ] Caixa física montada
- [ ] Props adquiridos/criados
- [ ] App funcional
- [ ] Packaging final

---

## FASE 7: PLAYTEST FINAL
**Duração estimada:** 1-2 semanas
**Objectivo:** Validar produto final

### 7.1 Testar Com Produto Real

- Usar caixa final (não protótipo)
- Usar app final (não wireframes)
- 3-5 grupos de teste novos (não os mesmos da Fase 5)
- Simular experiência completa de compra → jogo → fim

### 7.2 Checklist de Validação

- [ ] Todos os códigos funcionam
- [ ] Todos os compartimentos abrem
- [ ] App não crasha
- [ ] História é compreendida
- [ ] Tempo está dentro do esperado
- [ ] Trigger warnings são adequados
- [ ] Experiência emocional é satisfatória

---

## FASE 8: LANÇAMENTO
**Objectivo:** Disponibilizar o jogo

### 8.1 Opções de Distribuição

| Opção | Prós | Contras |
|-------|------|---------|
| Venda directa (website) | Controlo total, margens maiores | Precisa de marketing |
| Etsy/marketplaces | Audiência existente | Taxas, competição |
| Lojas físicas | Visibilidade | Margens menores |
| Kickstarter | Financiamento antecipado | Risco, trabalho extra |

### 8.2 Materiais de Marketing

- [ ] Fotografias profissionais do produto
- [ ] Vídeo trailer (1-2 min)
- [ ] Descrição para loja
- [ ] Press kit

---

# CRONOGRAMA RESUMIDO

```
FASE 0: Pré-Produção      ████░░░░░░░░░░░░░░░░  [ACTUAL]
FASE 1: Design Puzzles    ░░░░████░░░░░░░░░░░░
FASE 2: Conteúdo In-Game  ░░░░░░░░██████░░░░░░
FASE 3: Design Caixa      ░░░░░░░░░░░░████░░░░
FASE 4: Design App        ░░░░░░░░░░░░████░░░░  (paralelo com 3)
FASE 5: Playtest Papel    ░░░░░░░░░░░░░░░░██░░
FASE 6: Produção          ░░░░░░░░░░░░░░░░░███
FASE 7: Playtest Final    ░░░░░░░░░░░░░░░░░░░█
FASE 8: Lançamento        ░░░░░░░░░░░░░░░░░░░░█
```

---

# PRÓXIMO PASSO IMEDIATO

**Recomendação:** Começar pela Fase 1 - Design de Puzzles

Antes de escrever mais conteúdo narrativo, precisamos de:
1. Criar o Puzzle Dependency Chart
2. Definir exactamente que códigos abrem o quê
3. Mapear que informação está em que documento
4. Testar o fluxo em papel (sem conteúdo final)

**Porquê?**
> "Flowcharts are great if you're trying to solve a game, dependency charts are great if you're trying to design a game."

Se escrevermos mais narrativa sem o puzzle design, arriscamos ter de reescrever quando descobrirmos que o fluxo não funciona.

---

# APÊNDICE A: EXPERIÊNCIA DO JOGADOR (MINUTO A MINUTO)

## Acto 1: Abertura (0-30 min)

**Momento 0:** Jogador recebe/abre a caixa
- Vê: Caixa com aspecto de arquivo policial
- Sente: Curiosidade, ligeira apreensão

**Momento 5:** Abre envelope principal
- Lê: Carta introdutória
- Descobre: É um caso real (ficção), 3 freiras mortas
- Scan: QR code, abre app

**Momento 10:** App - Vídeo introdutório
- Vê: Imagens do orfanato, narração
- Ouve: "Bem-vindo à investigação..."
- Sente: Imersão no mundo

**Momento 15-30:** Lê primeiros testemunhos
- Descobre: Há algo estranho nas mortes
- Nota: Vários mencionam "3:33"
- Primeiro "aha!": O código 0333

## Acto 2: Investigação (30 min - 2h)

**Momento 30:** Abre Compartimento A (0333)
- Encontra: Autópsias das freiras
- Choque: Mortes impossíveis
- Novo mistério: Quem são as crianças mencionadas?

**Momento 45-60:** Investiga as crianças
- Cruza: Testemunhos com autópsias
- Descobre: João (1973), Sofia (1987), Miguel (2008)
- Pista: "6 letras, o rapaz que gostava de ler"

**Momento 60-75:** Resolve puzzle MIGUEL
- Abre: Compartimento B
- Encontra: Diário do Miguel, arquivos antigos
- Revelação: O que Miguel descobriu antes de morrer

**Momento 75-90:** As cartas da Sofia
- Lê: Voz da criança
- Emoção: Empatia, tristeza, raiva
- Puzzle: Cipher nas cartas

**Momento 90-120:** Junta as peças
- Compreende: O padrão de abusos
- Compreende: Porque as freiras morreram
- Código 2008: Abre compartimento C

## Acto 3: Revelação (2h - 3h)

**Momento 120:** Compartimento C
- Encontra: Autópsias das crianças
- Confirmação: Não foram acidentes
- Objectos: Das 3 crianças

**Momento 135-150:** Puzzle final
- Usa: 3 objectos + informação acumulada
- Código: 1960 (ano de fundação)
- Abre: Compartimento final

**Momento 150-165:** Revelação
- Lê: Carta final
- App: Vídeo de conclusão
- Ritual: "Libertar" as almas

**Momento 165-180:** Reflexão
- Sente: Catarse, satisfação, perturbação
- Compreende: A justiça foi feita
- Fim: Certificado de "investigador"

---

# APÊNDICE B: CHECKLIST MASTER

## Narrativa
- [x] ORFANATO_MASTER.md
- [x] Perfis de personagens (16 personagens)
- [x] Testemunhos (11 documentos)
- [ ] Autópsias freiras (3)
- [ ] Autópsias crianças (3)
- [ ] Cartas da Sofia (2-3)
- [ ] Diário do Miguel (3 entradas)
- [ ] Recortes de jornal (4)
- [ ] Registos do orfanato
- [ ] Carta de fundação
- [ ] Carta final/revelação

## Game Design
- [ ] Puzzle Dependency Chart
- [ ] Lista de puzzles com soluções
- [ ] Sistema de pistas
- [ ] Player journey detalhado

## Caixa Física
- [ ] Design da caixa
- [ ] Lista de compartimentos
- [ ] Lista de props
- [ ] Sistema de fechaduras
- [ ] Protótipo em cartão
- [ ] Orçamento

## App
- [ ] Wireframes
- [ ] Especificação técnica
- [ ] Assets visuais
- [ ] Conteúdo áudio/vídeo
- [ ] Desenvolvimento
- [ ] Testes

## Produção
- [ ] Design gráfico documentos
- [ ] Impressão
- [ ] Tratamento (envelhecimento)
- [ ] Montagem caixa
- [ ] Props físicos
- [ ] Packaging

## Validação
- [ ] Playtest papel (3+ sessões)
- [ ] Playtest final (3+ sessões)
- [ ] Ajustes finais

---

*Documento criado: 8 Dezembro 2024*
*Última actualização: 8 Dezembro 2024*
*Versão: 1.0*
