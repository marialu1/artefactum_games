# Orfanato Nossa Senhora das Dores

**A supernatural murder mystery investigation game**

---

## Quick Info

| | |
|---|---|
| **Status** | Pre-Production |
| **Phase** | Content Creation (Act 1) |
| **Players** | 1-4 (cooperative) |
| **Duration** | 2-3 hours |
| **Language** | Portuguese |
| **Format** | Physical box + PWA companion |

---

## The Premise

Three nuns are found dead at exactly 03:33 AM. Each died in a different, impossible way:
- One was thrown against walls repeatedly - with no attacker
- One drowned in a bucket with 10cm of water
- One burned from the inside - skin untouched

As investigators, players piece together the evidence and discover the terrifying truth: the nuns were child abusers, and their killers are the vengeful spirits of their victims.

**The promise:** "Discover what happened."
**The truth:** It wasn't human murder. It was supernatural justice.

---

## Current Status

### What's Done
- [x] Full narrative bible (16 characters, timeline, secrets)
- [x] 11 witness testimonies written
- [x] 5-act structure defined
- [x] Puzzle dependency chart complete
- [x] 6 essential testimonies selected

### What's Next
- [ ] **Act 1 documents:** Police report, 3 autopsy reports
- [ ] Act 2-5 documents
- [ ] Visual assets (AI-generated)
- [ ] Video production
- [ ] PWA companion app
- [ ] Physical prototype

---

## The 5 Acts

| Act | Question | Duration | Puzzle |
|-----|----------|----------|--------|
| 1. The Crime | "How did they die?" | 30-40 min | 0333 |
| 2. The Suspects | "Who had motive?" | 30-40 min | MIGUEL |
| 3. The Dead | "Who are the children?" | 30-40 min | 2008 |
| 4. The Truth | "Why now?" | 20-30 min | 1960 |
| 5. The Closure | "What now?" | 10-15 min | - |

---

## Key Documents

### Start Here
1. **[ESTRUTURA_5_ACTOS.md](./docs/ESTRUTURA_5_ACTOS.md)** - Game blueprint, minute-by-minute experience
2. **[NEXT_ACTION.md](./NEXT_ACTION.md)** - Current task with prompts ready

### Design Reference
- [GDD.md](./docs/GDD.md) - Full game design document
- [PUZZLE_DEPENDENCY_CHART.md](./docs/PUZZLE_DEPENDENCY_CHART.md) - Puzzle flow
- [NARRATIVE_BIBLE.md](./docs/NARRATIVE_BIBLE.md) - Full story and timeline

### Learning
- [LEARNING_ROADMAP.md](./LEARNING_ROADMAP.md) - AI skills progression

---

## Project Structure

```
orfanato/
├── docs/
│   ├── ESTRUTURA_5_ACTOS.md     # Game blueprint (START HERE)
│   ├── GDD.md                    # Game Design Document
│   ├── PUZZLE_DEPENDENCY_CHART.md
│   ├── NARRATIVE_BIBLE.md
│   ├── ORFANATO_MASTER.md
│   ├── PLANO_PRODUCAO.md
│   │
│   ├── testemunhos/              # Witness statements
│   │   ├── ESSENTIAL/            # 6 used in game
│   │   └── BACKGROUND/           # 5 for reference
│   │
│   ├── personagens/              # Character profiles
│   │   ├── 01_FREIRAS_VIVAS.md
│   │   ├── 02_FUNCIONARIOS.md
│   │   ├── 03_ORFAOS_ACTUAIS.md
│   │   └── 04_SOBREVIVENTES_ADULTOS.md
│   │
│   └── documentos_ingame/        # In-game documents (TO CREATE)
│       ├── acto1/
│       ├── acto2/
│       ├── acto3/
│       ├── acto4/
│       └── acto5/
│
├── assets/
│   ├── documents/                # Formatted PDFs
│   ├── images/                   # Photos, maps
│   └── video/                    # Video assets
│
├── app/                          # PWA source code
├── physical/                     # Box and props specs
├── conceito/                     # Original concept
│
├── NEXT_ACTION.md                # Current task
└── LEARNING_ROADMAP.md           # Skills to learn
```

---

## The 6 Essential Testimonies

These are the only testimonies included in the physical game:

| # | Character | Role | Act |
|---|-----------|------|-----|
| 1 | Dr. Antonio | Describes impossible deaths | 1 |
| 2 | Rosa | Reveals abuse, heard children at 3:33 | 2 |
| 3 | Ana | Sees ghosts, confirms supernatural | 2 |
| 4 | Matilde | Witnessed the death directly | 2 |
| 5 | Irma Helena | Gives MIGUEL clue | 2 |
| 6 | Carla | Survivor, confirms pattern | 3 |

**Cut (background only):** Francisca, Manuel, Lucas, Padre Henrique, Tomas

---

## Development Log

| Date | Milestone |
|------|-----------|
| 2024-12 | Initial concept |
| 2024-12-07 | Project restructured, GDD created |
| 2024-12-08 | Puzzle dependency chart, 11 testimonies |
| 2025-12-08 | 5-act structure, learning roadmap |

---

## How to Contribute

This is a personal learning project, but feedback is welcome:
- Open an issue for suggestions
- The creative content is not open source

---

*Made with Claude Code as AI collaborator*
