# ACTO 2 - Documentos

**Status:** COMPLETO
**Puzzle:** MIGUEL (6 letras) → Abre arquivos do Acto 3
**Última actualização:** 13 Dezembro 2024

---

## Documentos Criados

### Testemunhos (5)

| # | Ficheiro | Testemunha | Conteúdo Principal |
|---|----------|------------|-------------------|
| 1 | `01_testemunho_rosa.typ` | Rosa (cozinheira) | Abusos, 03:33, comida escondida |
| 2 | `02_testemunho_ana.typ` | Ana (órfã, 15) | Vê fantasmas: Sofia, Miguel, João |
| 3 | `03_testemunho_matilde.typ` | Matilde (órfã, 12) | VIU a morte da Conceição, desenhos |
| 4 | `04_testemunho_helena.typ` | Helena (bibliotecária) | **PISTA: "6 letras" = MIGUEL** |
| 5 | `05_testemunho_carla.typ` | Carla (sobrevivente) | Fugiu em 2001, viu Sofia |

### Recortes de Jornal (3)

| # | Ficheiro | Ano | Vítima | Jornal |
|---|----------|-----|--------|--------|
| 6 | `06_recorte_jornal_1973.typ` | 1973 | João (8 anos) | Jornal de Sintra |
| 7 | `07_recorte_jornal_1987.typ` | 1987 | Sofia (10 anos) | Correio da Manhã |
| 8 | `08_recorte_jornal_2008.typ` | 2008 | Miguel (16 anos) | Diário de Notícias |

### Documentos de Apoio (1)

| # | Ficheiro | Descrição |
|---|----------|-----------|
| 9 | `09_lista_transferencias.typ` | "Transferências" falsas - os mortos |

---

## Estrutura Final do Compartimento A

```
📦 COMPARTIMENTO A (abre com 0333):

📄 01_testemunho_rosa.pdf
📄 02_testemunho_ana.pdf
📄 03_testemunho_matilde.pdf
📄 04_testemunho_helena.pdf ← PISTA "6 letras"
📄 05_testemunho_carla.pdf
📰 06_recorte_jornal_1973.pdf (João)
📰 07_recorte_jornal_1987.pdf (Sofia)
📰 08_recorte_jornal_2008.pdf (Miguel)
📋 09_lista_transferencias.pdf

🔐 Puzzle: MIGUEL → Abre Compartimento B (Acto 3)
```

---

## O que falta (Opcional)

### Desenhos da Matilde
Os 4 desenhos descritos no testemunho da Matilde devem ser criados separadamente:
1. Freira a flutuar
2. Mãos/sombras a puxar de cima
3. Corpo no chão
4. Três figuras (Sofia, João, Miguel)

**Prompt AI sugerido:**
```
child's crayon drawing, dark theme, simple stick figures,
creepy, on lined notebook paper, slightly smudged,
horror atmosphere, naive art style
```

### Planta do Orfanato (baixa prioridade)
Mapa com anotações de locais de castigo e mortes.

---

## Pistas e Ligações

### Pista Principal (Puzzle)
- **Helena diz:** "Seis letras. O rapaz que gostava de ler."
- **Resposta:** MIGUEL
- **Código para Acto 3:** MIGUEL

### Ligações entre Documentos
| Documento | Liga a |
|-----------|--------|
| Testemunhos Rosa/Carla | Confirmam abusos sistemáticos |
| Testemunhos Ana/Matilde | Descrevem os 3 fantasmas |
| Recortes de jornal | Provam as 3 mortes "acidentais" |
| Lista de transferências | Mostra encobrimento |

### O Padrão que o Jogador Deve Descobrir
1. João (1973) → Incêndio → Morreu na cozinha
2. Sofia (1987) → Afogamento → Morreu na cave
3. Miguel (2008) → Queda → Morreu nas escadas
4. **Todos classificados como "acidentes"**
5. **Todos "transferidos" segundo registos oficiais**

---

## Compilação

```bash
cd /home/marilu/proj/artefactum_games/orfanato/docs/documentos_ingame/acto2
for f in *.typ; do typst compile "$f"; done
```

---

*Criado: 13 Dezembro 2024*
*Status: COMPLETO*
