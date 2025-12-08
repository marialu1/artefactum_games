# NEXT ACTION: Completar ACTO 1

**Data:** 8 Dezembro 2024
**Filosofia:** Trabalhar por ACTO, nao por tipo de documento
**Referencia:** docs/ESTRUTURA_5_ACTOS.md

---

## ACTO 1: O CRIME

**Pergunta do jogador:** "Tres freiras morreram. Como?"
**Duracao:** 30-40 minutos
**Puzzle:** Codigo 0333 (hora da morte)

### Documentos Necessarios

| # | Documento | Status | Paginas |
|---|-----------|--------|---------|
| 1 | Relatorio policial inicial | A criar | 1 |
| 2 | Autopsia Irma Conceicao | A criar | 2 |
| 3 | Autopsia Irma Beatriz | A criar | 2 |
| 4 | Autopsia Irma Carmo | A criar | 2 |
| 5 | Testemunho Dr. Antonio | JA EXISTE | 1.5 |

### O Jogador Vai...

```
Minuto 0-5:   Abre caixa, ve "PROCESSO 2847/2024"
Minuto 5-15:  Le relatorio policial, descobre 3 mortes
Minuto 15-35: Le autopsias, percebe que sao IMPOSSIVEIS
Minuto 35:    Nota que todas morreram as 03:33
Minuto 36:    Tenta codigo 0333 → SUCESSO
```

---

## ORDEM DE TRABALHO

### 1. VERIFICAR testemunho Dr. Antonio (10 min)

O testemunho ja existe. Precisamos verificar se:
- [ ] Menciona a hora 03:33 claramente
- [ ] Descreve as mortes como "impossiveis"
- [ ] Nao da informacao a mais (spoilers)

```bash
cat docs/testemunhos/02_DR_ANTONIO_medico_legista.md
```

Se precisar de edicao, adaptar.

---

### 2. CRIAR relatorio policial (30 min)

**Proposito:** Contexto inicial, setup do misterio
**Tom:** Oficial, seco, factual
**Conteudo:**
- Data e hora da chamada
- Localizacao (Orfanato N.S. das Dores, Sintra)
- Descricao breve das 3 vitimas
- Quem encontrou (Rosa, as 05:30)
- Nota: "Circunstancias por esclarecer"

**Prompt base:**
```
Escreve um relatorio policial inicial em portugues de Portugal.
Formato oficial da PSP/GNR.
Tom: seco, factual, burocrático.

DADOS:
- Data: 7 de Dezembro de 2024
- Hora da chamada: 05:47
- Local: Orfanato Nossa Senhora das Dores, Sintra
- Vitimas: 3 religiosas (Irma Conceicao, 68; Irma Beatriz, 72; Irma Carmo, 65)
- Descoberta por: Rosa Marques (cozinheira), as 05:30
- Circunstancias: Mortes aparentemente simultaneas, locais diferentes

O relatorio deve:
- Ter aspecto oficial (numero de processo, carimbos)
- NAO dar conclusoes
- Mencionar que GNR passou caso para PJ
- Ter 1 pagina
```

---

### 3. CRIAR autopsia Irma Conceicao (45 min)

**Morte:** Quedas multiplas / atirada contra paredes
**O impossivel:** Lesoes de diferentes direccoes, sem agressor
**Pista:** Hora da morte 03:33

**Prompt base:**
```
Escreve relatorio de autopsia medico-legal portugues.

VITIMA:
- Nome: Maria da Conceicao Santos
- Idade: 68 anos
- Profissao: Religiosa
- Data morte: 7 Dezembro 2024, 03:33
- Local: Capela do orfanato

LESOES:
- Traumatismo craniano multiplo
- Fracturas consistentes com quedas de DIFERENTES alturas
- Hematomas no torso
- Expressao de terror no rosto
- SEM marcas de agressao (ninguem a agarrou)

O medico deve notar que:
- Lesoes sao "inconsistentes com queda acidental"
- Hora da morte: exactamente 03:33
- Nao ha explicacao logica

Formato oficial portugues, 2 paginas.
```

---

### 4. CRIAR autopsia Irma Beatriz (45 min)

**Morte:** Queimaduras internas sem fogo
**O impossivel:** Orgaos queimados, pele intacta
**Pista:** Hora da morte 03:33

**Prompt base:**
```
Escreve relatorio de autopsia medico-legal portugues.

VITIMA:
- Nome: Maria Beatriz Figueiredo
- Idade: 72 anos
- Profissao: Religiosa
- Data morte: 7 Dezembro 2024, 03:33
- Local: Cozinha do orfanato

LESOES:
- Queimaduras de 3o grau em orgaos INTERNOS
- Pele externa INTACTA (sem queimaduras visiveis)
- Nao havia fonte de calor no local
- Cheiro a carne queimada
- Expressao de agonia

O medico deve notar que:
- "Fisicamente impossivel"
- "Nunca vi nada semelhante"
- Hora da morte: exactamente 03:33

Formato oficial portugues, 2 paginas.
```

---

### 5. CRIAR autopsia Irma Carmo (45 min)

**Morte:** Afogamento em balde com 10cm de agua
**O impossivel:** Adulto nao se afoga em balde
**Pista:** Hora da morte 03:33

**Prompt base:**
```
Escreve relatorio de autopsia medico-legal portugues.

VITIMA:
- Nome: Maria do Carmo Oliveira
- Idade: 65 anos
- Profissao: Religiosa
- Data morte: 7 Dezembro 2024, 03:33
- Local: Lavandaria do orfanato

LESOES:
- Afogamento (agua nos pulmoes)
- Encontrada com cabeca num balde de 30cm de altura
- Balde continha apenas 10cm de agua
- Marcas de MAOS PEQUENAS (crianca?) nos ombros
- Nao ha explicacao para nao se ter levantado

O medico deve notar que:
- "Um adulto nao se afoga num balde"
- "As marcas parecem de maos infantis"
- Hora da morte: exactamente 03:33
- "Algo a manteve submersa"

Formato oficial portugues, 2 paginas.
```

---

## CHECKLIST ACTO 1

### Documentos
- [ ] Relatorio policial criado
- [ ] Autopsia Conceicao criada
- [ ] Autopsia Beatriz criada
- [ ] Autopsia Carmo criada
- [ ] Testemunho Dr. Antonio verificado/editado

### Qualidade
- [ ] Hora 03:33 aparece em TODOS
- [ ] Cada morte e claramente IMPOSSIVEL
- [ ] Tom clinico e oficial
- [ ] Sem spoilers de actos futuros
- [ ] Documentos parecem REAIS

### Teste
- [ ] Ler tudo em sequencia
- [ ] Perguntar: "Um jogador chegaria ao codigo 0333?"
- [ ] Perguntar: "O jogador quer saber MAIS?"

---

## DEPOIS DO ACTO 1

Quando Acto 1 estiver completo:
1. Commit: `git commit -m "feat: Complete Act 1 documents"`
2. Passar para Acto 2
3. Repetir processo

---

## FICHEIROS A CRIAR

```
orfanato/
└── docs/
    └── documentos_ingame/
        └── acto1/
            ├── 01_relatorio_policial.md
            ├── 02_autopsia_conceicao.md
            ├── 03_autopsia_beatriz.md
            └── 04_autopsia_carmo.md
```

---

## TEMPO ESTIMADO

| Tarefa | Tempo |
|--------|-------|
| Verificar Dr. Antonio | 10 min |
| Relatorio policial | 30 min |
| Autopsia Conceicao | 45 min |
| Autopsia Beatriz | 45 min |
| Autopsia Carmo | 45 min |
| Revisao + commits | 30 min |
| **TOTAL** | ~3.5 horas |

---

*Quando terminares o Acto 1, tens 30% do jogo pronto!*
