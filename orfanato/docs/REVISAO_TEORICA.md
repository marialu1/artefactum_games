# REVISAO TEORICA COMPLETA
## Estado de Toda a Documentacao do Projecto

**Data:** 12 Dezembro 2024
**Total de ficheiros:** 41 markdowns
**Objectivo:** Mapear TUDO o que existe e o que falta

---

# 1. ESTRUTURA DE PASTAS

```
orfanato/
├── _archive/                    # Docs obsoletos (3 ficheiros)
├── docs/
│   ├── personagens/            # Fichas de personagens (6 ficheiros)
│   ├── testemunhos/
│   │   ├── ESSENTIAL/          # 6 testemunhos do jogo (6 ficheiros)
│   │   └── BACKGROUND/         # Material extra (5 ficheiros)
│   ├── documentos_ingame/
│   │   ├── acto1/              # COMPLETO (4 ficheiros)
│   │   ├── acto2/              # EM PROGRESSO (1 TODO)
│   │   ├── acto3/              # VAZIO
│   │   ├── acto4/              # VAZIO
│   │   └── acto5/              # VAZIO
│   └── [docs raiz]             # 10 ficheiros de design/planeamento
├── NEXT_ACTION.md
├── README.md
└── LEARNING_ROADMAP.md
```

---

# 2. DOCUMENTOS MESTRES (Raiz de docs/)

| Ficheiro | Linhas | Proposito | Status |
|----------|--------|-----------|--------|
| **VERSAO_CANONICA.md** | ~200 | Fonte de verdade | ✅ OFICIAL |
| **ANALISE_CONCEPTUAL.md** | ~430 | Mapa do projecto | ✅ Actualizado |
| **NARRATIVE_BIBLE.md** | ~800 | Lore completo | ✅ Detalhado |
| **ESTRUTURA_5_ACTOS.md** | ~350 | Blueprint do jogo | ✅ Completo |
| **PLANO_PRODUCAO.md** | ~600 | Cronograma | ⚠️ Por actualizar |
| **PUZZLE_DEPENDENCY_CHART.md** | ~900 | Diagramas de puzzles | ✅ Detalhado |
| **PHYSICAL_DIGITAL_CONNECTION.md** | ~400 | Integracao fisica/digital | ✅ Bom |
| **TECHNICAL_ELECTRONIC_LOCKS.md** | ~700 | Specs tecnicas | ✅ Detalhado |
| **BUDGET_OPENSOURCE_OPTIONS.md** | ~300 | Orcamento | ✅ Bom |
| **RESEARCH_MECHANICS.md** | ~300 | Pesquisa mecanicas | ✅ Bom |

**Total:** 10 documentos de design/planeamento

---

# 3. PERSONAGENS (docs/personagens/)

| Ficheiro | Personagens | Linhas | Status |
|----------|-------------|--------|--------|
| 01_FREIRAS_VIVAS.md | 4 | ~600 | ✅ Completo |
| 02_FUNCIONARIOS.md | 4 | ~700 | ✅ Completo |
| 03_ORFAOS_ACTUAIS.md | 3 | ~650 | ✅ Completo |
| 04_SOBREVIVENTES_ADULTOS.md | 5 | ~1000 | ✅ Completo |
| 05_FANTASMAS.md | 3 | ~600 | ✅ Completo |
| 06_FREIRAS_MORTAS.md | 3 | ~500 | ✅ Completo |

**Total:** 22 personagens documentados em 6 ficheiros

### Detalhes por Ficheiro

**01_FREIRAS_VIVAS.md:**
- Madre Francisca (74) - Arquitecta do sistema
- Irma Helena (69) - Bibliotecaria, codigo MIGUEL
- Irma Clara (61) - Musica, ouviu algo as 03:33
- Irma Mariana (58) - Cozinha auxiliar

**02_FUNCIONARIOS.md:**
- Manuel Ferreira (71) - Caseiro, BOM
- Rosa Santos (63) - Cozinheira, BOA
- Dr. Antonio Ferreira (55) - Medico legista, NEUTRO
- Padre Henrique Mota (68) - Paroco, CUMPLICE

**03_ORFAOS_ACTUAIS.md:**
- Lucas (17) - Ceptico, detalhes temporais
- Ana (15) - Ve fantasmas
- Matilde (12) - Viu morte de Conceicao

**04_SOBREVIVENTES_ADULTOS.md:**
- Carla (31) - Sofia salvou-a em 2001
- Tomas (22) - Amigo de Miguel
- Ines (23) - Voltou ao orfanato
- Rui (25) - Negador, militar
- Vera (21) - Informadora

**05_FANTASMAS.md:**
- Joao (1973, 9 anos) - O Executor
- Sofia (1987, 7 anos) - A Guia
- Miguel (2008, 11 anos) - O Lider

**06_FREIRAS_MORTAS.md:**
- Irma Conceicao (67) - Morta por Miguel
- Irma Beatriz (58) - Morta por Sofia
- Irma Carmo (52) - Morta por Joao

---

# 4. TESTEMUNHOS (docs/testemunhos/)

## ESSENTIAL/ (6 ficheiros - usados no jogo)

| # | Ficheiro | Personagem | Acto | Status |
|---|----------|------------|------|--------|
| 02 | DR_ANTONIO_medico_legista.md | Dr. Antonio | 1 | ✅ Escrito |
| 04 | ROSA_cozinheira.md | Rosa | 2 | ✅ Escrito |
| 06 | ANA_orfao_15.md | Ana | 2 | ✅ Escrito |
| 07 | MATILDE_orfao_12.md | Matilde | 2 | ✅ Escrito |
| 09 | IRMA_HELENA_bibliotecaria.md | Helena | 2 | ✅ Escrito |
| 10 | CARLA_sobrevivente.md | Carla | 3 | ✅ Escrito |

**TODOS OS 6 TESTEMUNHOS ESSENCIAIS ESTAO ESCRITOS**

## BACKGROUND/ (5 ficheiros - material extra)

| # | Ficheiro | Personagem | Status |
|---|----------|------------|--------|
| 01 | FRANCISCA_madre_superiora.md | Francisca | ✅ Escrito |
| 03 | MANUEL_caseiro.md | Manuel | ✅ Escrito |
| 05 | LUCAS_orfao_17.md | Lucas | ✅ Escrito |
| 08 | PADRE_HENRIQUE.md | Padre Henrique | ✅ Escrito |
| 11 | TOMAS_sobrevivente.md | Tomas | ✅ Escrito |

**Total:** 11 testemunhos escritos (6 essenciais + 5 background)

---

# 5. DOCUMENTOS INGAME (docs/documentos_ingame/)

## Acto 1: O Crime - ✅ COMPLETO

| Documento | Ficheiro | Paginas | Status |
|-----------|----------|---------|--------|
| Relatorio policial | 01_relatorio_policial.md | ~2 | ✅ |
| Autopsia Conceicao | 02_autopsia_conceicao.md | ~2.5 | ✅ |
| Autopsia Beatriz | 03_autopsia_beatriz.md | ~3 | ✅ |
| Autopsia Carmo | 04_autopsia_carmo.md | ~3 | ✅ |

**Puzzle:** 0333 (hora da morte)

## Acto 2: As Suspeitas - 🟡 EM PROGRESSO

| Documento | Tipo | Status |
|-----------|------|--------|
| Testemunho Rosa | Testemunho | ✅ Escrito (ESSENTIAL/) |
| Testemunho Ana | Testemunho | ✅ Escrito (ESSENTIAL/) |
| Testemunho Matilde | Testemunho | ✅ Escrito (ESSENTIAL/) |
| Testemunho Helena | Testemunho | ✅ Escrito (ESSENTIAL/) |
| Recorte jornal 1973 | Jornal | ❌ Por fazer |
| Recorte jornal 1987 | Jornal | ❌ Por fazer |
| Recorte jornal 2008 | Jornal | ❌ Por fazer |
| Desenhos Matilde (4) | Descricoes | ❌ Por fazer |
| Lista transferencias | Documento | ❌ Por fazer |
| Planta orfanato | Visual | ❌ Por fazer |

**Puzzle:** MIGUEL (6 letras)

## Acto 3: Os Mortos - ❌ POR FAZER

| Documento | Tipo | Status |
|-----------|------|--------|
| Carta da Sofia | Carta | ❌ Por fazer |
| Diario do Miguel (3 entradas) | Diario | ❌ Por fazer |
| Registo obito Joao | Documento | ❌ Por fazer |
| Testemunho Carla | Testemunho | ✅ Escrito (ESSENTIAL/) |

**Puzzle:** 2008 (ano morte Miguel)

## Acto 4: A Verdade - ❌ POR FAZER

| Documento | Tipo | Status |
|-----------|------|--------|
| Registo transferencias completo | Lista | ❌ Por fazer |
| Carta fundacao 1960 | Carta | ❌ Por fazer |
| Documento revelacao | Final | ❌ Por fazer |

**Puzzle:** 1960 (ano fundacao)

## Acto 5: O Fecho - ❌ POR FAZER

| Documento | Tipo | Status |
|-----------|------|--------|
| Carta final | Carta | ❌ Por fazer |
| Descricao objectos | Texto | ❌ Por fazer |
| Script video conclusao | Guiao | ❌ Por fazer |

---

# 6. ARQUIVO (_archive/)

Documentos movidos por serem obsoletos ou redundantes:

| Ficheiro | Motivo |
|----------|--------|
| CONCEITO_ORIGINAL.md | Substituido por VERSAO_CANONICA |
| GDD.md | Redundante com ESTRUTURA_5_ACTOS |
| ORFANATO_MASTER.md | Substituido por VERSAO_CANONICA |

---

# 7. ANALISE DE CONSISTENCIA

## Verificacao de Datas (VERSAO_CANONICA)

| Fantasma | Ano | Idade | ✓ |
|----------|-----|-------|---|
| Joao | 1973 | 9 | ✅ |
| Sofia | 1987 | 7 | ✅ |
| Miguel | 2008 | 11 | ✅ |

## Verificacao de Nomes (VERSAO_CANONICA)

| Freira | Nome Canonico | ✓ |
|--------|---------------|---|
| Educadora | Conceicao | ✅ |
| Disciplina | Beatriz | ✅ |
| Administracao | Carmo | ✅ |

## Verificacao de Metodos de Morte

| Freira | Metodo | Fantasma | ✓ |
|--------|--------|----------|---|
| Conceicao | Queda/impacto | Miguel | ✅ |
| Beatriz | Afogamento | Sofia | ✅ |
| Carmo | Fumo/inalacao | Joao | ✅ |

---

# 8. O QUE ESTA COMPLETO

## Documentacao Teorica ✅

- [x] Conceito e premissa
- [x] Narrativa completa (NARRATIVE_BIBLE)
- [x] Estrutura dos 5 actos
- [x] Todos os personagens (22)
- [x] Todos os testemunhos essenciais (6)
- [x] Versao canonica (fonte de verdade)
- [x] Puzzles e dependencias
- [x] Pesquisa tecnica

## Documentos Ingame ✅

- [x] Acto 1 completo (4 documentos)

---

# 9. O QUE FALTA

## Documentos Ingame (Parte Criativa)

### Acto 2 - Material de Apoio
- [ ] 3 recortes de jornal (1973, 1987, 2008)
- [ ] 4 descricoes dos desenhos da Matilde
- [ ] Lista de "transferencias" parcial
- [ ] Planta do orfanato anotada

### Acto 3 - Documentos das Criancas
- [ ] Carta da Sofia (voz de 7 anos)
- [ ] Diario do Miguel (3 entradas)
- [ ] Registo de obito do Joao (1973)

### Acto 4 - Revelacao
- [ ] Registo de transferencias completo
- [ ] Carta de fundacao (1960)
- [ ] Documento de revelacao final

### Acto 5 - Fecho
- [ ] Carta final
- [ ] Descricoes dos objectos fisicos
- [ ] Script do video de conclusao

## Documentacao Pendente

- [ ] Actualizar PLANO_PRODUCAO.md
- [ ] Rever NARRATIVE_BIBLE para alinhar com VERSAO_CANONICA

---

# 10. ESTATISTICAS

## Por Categoria

| Categoria | Ficheiros | Status |
|-----------|-----------|--------|
| Docs Mestres | 10 | ✅ Completo |
| Personagens | 6 | ✅ Completo |
| Testemunhos Essential | 6 | ✅ Completo |
| Testemunhos Background | 5 | ✅ Completo |
| Acto 1 | 4 | ✅ Completo |
| Acto 2 | 1 (TODO) | 🟡 Parcial |
| Acto 3 | 0 | ❌ Vazio |
| Acto 4 | 0 | ❌ Vazio |
| Acto 5 | 0 | ❌ Vazio |
| Arquivo | 3 | - |

## Totais

- **Ficheiros activos:** 38
- **Ficheiros arquivados:** 3
- **Personagens documentados:** 22
- **Testemunhos escritos:** 11
- **Documentos ingame completos:** 4
- **Documentos ingame por fazer:** ~15

## Percentagem Teorica

```
CONCEITO/NARRATIVA   ████████████████████ 100%
PERSONAGENS          ████████████████████ 100%
TESTEMUNHOS          ████████████████████ 100%
ESTRUTURA/PUZZLES    ████████████████████ 100%
DOCS TECNICOS        ████████████████████ 100%

TOTAL TEORICO: 100% COMPLETO
```

## Percentagem Criativa (Docs Ingame)

```
ACTO 1               ████████████████████ 100%
ACTO 2               ████████░░░░░░░░░░░░  40%
ACTO 3               ████░░░░░░░░░░░░░░░░  20% (so testemunho)
ACTO 4               ░░░░░░░░░░░░░░░░░░░░   0%
ACTO 5               ░░░░░░░░░░░░░░░░░░░░   0%

TOTAL CRIATIVO: ~35%
```

---

# 11. PROXIMOS PASSOS RECOMENDADOS

## Opcao A: Continuar por Actos
1. Terminar Acto 2 (recortes, desenhos, lista)
2. Fazer Acto 3 (carta Sofia, diario Miguel)
3. Fazer Acto 4 (transferencias, fundacao)
4. Fazer Acto 5 (carta final, objectos)

## Opcao B: Por Tipo de Documento
1. Todas as cartas (Sofia, fundacao, final)
2. Todos os diarios (Miguel)
3. Todos os recortes de jornal
4. Todos os documentos oficiais

## Opcao C: Por Emocao/Dificuldade
1. Faceis primeiro (recortes, listas)
2. Emotivos depois (cartas das criancas)
3. Fechos por ultimo (revelacao, final)

---

# 12. CONCLUSAO

## Parte Teorica: ✅ COMPLETA

Toda a documentacao teorica esta feita:
- 22 personagens com fichas detalhadas
- 11 testemunhos escritos
- Narrativa, estrutura, puzzles definidos
- Versao canonica como fonte de verdade

## Parte Criativa: 🟡 35% COMPLETA

Falta escrever os documentos que os jogadores vao ler:
- Acto 1: Feito
- Actos 2-5: Por fazer

---

*Documento criado: 12 Dezembro 2024*
*Este documento e uma fotografia do estado actual*
