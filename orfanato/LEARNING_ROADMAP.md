# LEARNING ROADMAP: Pro Game Developer with AI

**Owner:** Maria (Misha)
**Goal:** Aprender AI aplicada a game development criando o Orfanato
**Philosophy:** Learn by doing - cada feature é uma oportunidade de skill

---

## O QUE JA TENS (Inventario)

### Documentacao Completa
| Documento | Linhas | Status |
|-----------|--------|--------|
| GDD.md | 729 | Completo |
| PLANO_PRODUCAO.md | 683 | Completo |
| PUZZLE_DEPENDENCY_CHART.md | 699 | Completo |
| NARRATIVE_BIBLE.md | ? | Completo |
| ORFANATO_MASTER.md | 537 | Completo |
| 16 personagens | ~3160 | Completo |
| 11 testemunhos | ~1614 | Completo |
| **TOTAL** | ~7400+ | Pronto para producao |

### O Que Falta Criar
1. Documentos in-game (autopsias, cartas, diario)
2. App companion (PWA)
3. Videos (intro + conclusao)
4. Caixa fisica + props
5. Assets visuais (AI generated)

---

## ROADMAP DE SKILLS

### FASE 1: AI Content Generation (Semanas 1-2)
**O que vais fazer:** Criar documentos in-game com AI
**Skills que vais aprender:**

| Skill | Ferramenta | Aplicacao no Jogo |
|-------|------------|-------------------|
| Prompt Engineering | Claude, GPT-4 | Escrever autopsias, cartas, diarios com tom especifico |
| Style Transfer | Claude | Diferentes "vozes" (crianca vs medico vs freira) |
| Consistency Checking | Claude | Verificar que datas/nomes/factos batem certo |
| Document Generation | Claude + Typst | Formatar documentos para parecerem reais |

**Entregaveis:**
- [ ] 3 autopsias das freiras (formato medico-legal real)
- [ ] 3 autopsias das criancas (historicas)
- [ ] Diario do Miguel (3 entradas)
- [ ] Cartas da Sofia (2-3)
- [ ] Carta de fundacao (1960)

**Como aprender:**
```
1. Pesquisar formato real de autopsias portuguesas
2. Dar exemplos ao Claude, pedir para gerar no estilo
3. Iterar ate o tom estar perfeito
4. Usar Typst para layout profissional
```

---

### FASE 2: AI Visual Generation (Semanas 3-4)
**O que vais fazer:** Criar assets visuais com AI
**Skills que vais aprender:**

| Skill | Ferramenta | Aplicacao no Jogo |
|-------|------------|-------------------|
| Image Generation | Midjourney, DALL-E 3, Flux | Fotos do orfanato, cenas, personagens |
| Prompt Crafting | Midjourney | Estilo consistente (sepia, 1960s, gotico) |
| Image Editing | Photoshop/GIMP + AI | Envelhecer fotos, adicionar manchas |
| Consistency | Seed management | Mesmo orfanato em todas as imagens |

**Entregaveis:**
- [ ] 5-10 fotos do orfanato (exterior, interiores)
- [ ] Fotos de cena de crime (estilizadas, nao gore)
- [ ] Retratos das criancas (estilo foto antiga)
- [ ] Desenhos do Joao (estilo crianca)

**Como aprender:**
```
1. Estudar prompts de Midjourney para "vintage photography"
2. Criar style guide visual (cores, filtros, mood)
3. Gerar batch de imagens, seleccionar melhores
4. Pos-processar para consistencia
```

---

### FASE 3: AI Video Production (Semanas 5-6)
**O que vais fazer:** Criar videos intro e conclusao
**Skills que vais aprender:**

| Skill | Ferramenta | Aplicacao no Jogo |
|-------|------------|-------------------|
| AI Voice Generation | ElevenLabs | Narrador portugues, voz grave |
| Video from Images | Runway, Pika | Animar fotos do orfanato |
| Music Generation | Suno, Udio | Soundtrack de suspense |
| Video Editing | DaVinci Resolve | Juntar tudo |

**Entregaveis:**
- [ ] Video intro (2-3 min)
- [ ] Video conclusao (1-2 min)
- [ ] Audio ambiente (loop para app)
- [ ] Soundtrack (2-3 tracks)

**Como aprender:**
```
1. Escrever scripts detalhados primeiro
2. Gerar VO com ElevenLabs (testar vozes)
3. Animar imagens com Runway (ken burns, parallax)
4. Compor musica com Suno (prompts de horror/suspense)
5. Editar em DaVinci (gratis, profissional)
```

---

### FASE 4: App Development + AI Features (Semanas 7-10)
**O que vais fazer:** Criar a PWA companion
**Skills que vais aprender:**

| Skill | Ferramenta | Aplicacao no Jogo |
|-------|------------|-------------------|
| React/Next.js | VSCode | Frontend da app |
| PWA Development | Service Workers | Funcionar offline |
| AI Integration | OpenAI API, Claude API | Sistema de hints inteligente |
| Voice AI | Whisper + TTS | "Telefonar" a personagens |

**Entregaveis:**
- [ ] App funcional (verificar codigos, mostrar videos)
- [ ] Sistema de hints (3 niveis)
- [ ] [AVANCADO] AI hints dinamicos
- [ ] [AVANCADO] Voice chat com personagens

**Como aprender:**
```
1. Comecar com Next.js template simples
2. Adicionar verificacao de codigos (localStorage)
3. Integrar videos (YouTube embed ou Cloudflare)
4. Adicionar sistema de hints estatico
5. [DEPOIS] Adicionar AI para hints dinamicos
```

---

### FASE 5: Physical Production (Semanas 11-12)
**O que vais fazer:** Produzir a caixa fisica
**Skills que vais aprender:**

| Skill | Ferramenta | Aplicacao no Jogo |
|-------|------------|-------------------|
| Document Design | Canva, Typst, InDesign | Layout profissional |
| Physical Prototyping | Cartao, impressora | Testar antes de produzir |
| Prop Making | DIY, Etsy | Objectos fisicos |
| Print Production | Grafica local | Impressao qualidade |

**Entregaveis:**
- [ ] Todos os documentos formatados para impressao
- [ ] Prototipo em papel testado
- [ ] Caixa fisica montada
- [ ] Props adquiridos/criados

---

## AI SKILLS PROGRESSION

```
NIVEL 1: Consumer (Onde comecas)
├── Usar ChatGPT/Claude para escrever
├── Usar Midjourney para imagens basicas
└── Usar ElevenLabs para voz

NIVEL 2: Crafter (Semanas 1-4)
├── Prompt engineering avancado
├── Style guides para consistencia
├── Workflows multi-ferramenta
└── Iteracao e refinamento

NIVEL 3: Integrator (Semanas 5-8)
├── APIs de AI em codigo (OpenAI, Anthropic)
├── Pipelines automatizados
├── AI em apps (hints dinamicos)
└── Voice AI interactivo

NIVEL 4: Creator (Semanas 9-12+)
├── Fine-tuning de modelos
├── Embeddings para search
├── RAG para contexto dinamico
└── Agentes autonomos

NIVEL 5: Innovator (Futuro)
├── Criar ferramentas proprias
├── Combinar AI de formas novas
├── Contribuir para open source
└── Ensinar outros
```

---

## ESTRUTURA DE TRABALHO SEMANAL

### Cada Semana:
```
SEGUNDA: Planning
├── Rever o que foi feito
├── Definir 3 deliverables da semana
└── Identificar skill nova a aprender

TERCA-QUINTA: Production
├── Trabalhar nos deliverables
├── Documentar aprendizagens
└── Fazer commits regulares

SEXTA: Review + Learn
├── Publicar progresso (blog? Twitter? Discord?)
├── Estudar 1 tutorial/artigo novo
└── Planear semana seguinte
```

### Tracking:
- [ ] GitHub Issues para tarefas
- [ ] CHANGELOG.md para progresso
- [ ] Blog posts sobre aprendizagens (dominatedbycline?)

---

## PROXIMO PASSO IMEDIATO

**Esta semana:** Fase 1 - Primeiro documento

1. **Escolhe UM documento para comecar:**
   - Recomendo: Autopsia da Irma Conceicao (morte por queda/pancada)

2. **Processo:**
   ```
   a) Pesquisar formato real de autopsia portuguesa
   b) Criar prompt detalhado para Claude
   c) Gerar primeira versao
   d) Iterar ate estar perfeito
   e) Formatar em Typst
   f) Commit + documentar aprendizagens
   ```

3. **Deliverable:** 1 autopsia completa, formatada, pronta para impressao

---

## RECURSOS PARA APRENDER

### AI Content Generation
- [Anthropic Prompt Engineering Guide](https://docs.anthropic.com/claude/docs/prompt-engineering)
- [OpenAI Cookbook](https://cookbook.openai.com/)

### AI Image Generation
- [Midjourney Documentation](https://docs.midjourney.com/)
- [DALL-E Best Practices](https://platform.openai.com/docs/guides/images)

### AI Video
- [Runway ML Tutorials](https://runwayml.com/tutorials/)
- [ElevenLabs Docs](https://elevenlabs.io/docs)

### Game Design
- [Ron Gilbert Puzzle Dependency Charts](https://grumpygamer.com/puzzle_dependency_charts/)
- [Hunt A Killer Design](https://www.starterstory.com/hunt-a-killer-mystery-game)

### PWA Development
- [Next.js Documentation](https://nextjs.org/docs)
- [PWA with Next.js](https://nextjs.org/docs/app/building-your-application/configuring/progressive-web-apps)

---

## METRICAS DE SUCESSO

### Por Fase:
| Fase | Metrica | Target |
|------|---------|--------|
| 1 | Documentos criados | 10+ |
| 2 | Assets visuais | 20+ |
| 3 | Videos produzidos | 2 |
| 4 | App funcional | 1 |
| 5 | Playtests completos | 3+ |

### Skills Adquiridas:
- [ ] Prompt engineering (Claude, GPT-4)
- [ ] Image generation (Midjourney/DALL-E)
- [ ] Voice synthesis (ElevenLabs)
- [ ] Video production (Runway + DaVinci)
- [ ] AI APIs em codigo
- [ ] PWA development
- [ ] Physical prototyping

---

## PORTFOLIO OUTCOME

Quando terminares, vais ter:

1. **Produto Completo:** Um jogo jogavel e vendavel
2. **Portfolio de AI Skills:** Demonstrado em projecto real
3. **Blog Posts:** Documentando o processo
4. **GitHub:** Codigo e assets publicos
5. **Network:** Comunidade de game devs + AI enthusiasts

---

*Documento criado: 8 Dezembro 2024*
*Actualizado por: Claude Code*
*Versao: 1.0*
