# Research: Game Mechanics & Best Practices

Based on analysis of top games in the genre.

---

## 1. LOCK & PUZZLE MECHANICS

### Tipos de Locks nos Melhores Jogos

| Jogo | Tipo de Lock | Como Funciona |
|------|--------------|---------------|
| **Exit: The Game** | Disco decoder | Rodar símbolos para formar código |
| **Unlock!** | App-based | Somar números de cartas = código |
| **Escape Room in a Box** | Locks físicos reais | 3 cadeados diferentes (combo, chave, direcional) |
| **Escape Room: The Game** | Chrono Decoder | Device físico com slots para chaves |
| **Chronicles of Crime** | QR codes | Scan desbloqueia conteúdo na app |

### Recomendação para Orfanato

**Mix híbrido:**
1. **Locks físicos simples** (combinação 3-4 dígitos) para as caixas
2. **Códigos na app** para desbloquear conteúdo digital
3. **Dedução** - códigos derivam de pistas, não são encontrados directamente

### Tipos de Puzzles Interessantes

| Tipo | Exemplo | Aplicação no Orfanato |
|------|---------|----------------------|
| **Sobreposição** | Colocar transparências uma sobre outra revela mensagem | Planta do orfanato + mapa de mortes = padrão |
| **Dobrar/Manipular** | Dobrar envelope revela pista escondida | Carta de uma freira dobrada mostra confissão |
| **Cipher/Código** | Substituição de letras, pigpen, etc. | Diário de criança em código secreto |
| **Cross-reference** | Info de doc A + doc B = resposta | Hora da autópsia + testemunho = contradição |
| **Luz negra** | Tinta invisível revelada com UV | Marcas nas paredes do orfanato |
| **Espelho** | Texto só legível ao espelho | Mensagem escrita por criança perturbada |
| **Timeline** | Organizar eventos cronologicamente | Descobrir sequência das mortes |
| **Contagem** | Contar elementos específicos | Número de cruzes no cemitério = código |

---

## 2. APP INTEGRATION (Inspirado em Chronicles of Crime)

### Como Chronicles of Crime Funciona

1. **QR Codes em tudo** - cada carta/local/personagem tem QR
2. **Scan para interagir** - scan personagem + scan objecto = "o que sabes sobre isto?"
3. **Crime scene 360°** - app mostra cena, jogadores descrevem o que vêem
4. **Tempo passa** - cada acção consome tempo no jogo
5. **Conteúdo dinâmico** - mesmos QR codes = conteúdo diferente por cenário

### Adaptação para Orfanato

**Funcionalidades Core da App:**

```
APP ORFANATO
│
├── HOME
│   ├── Iniciar jogo (QR da caixa)
│   ├── Continuar jogo
│   └── Definições
│
├── VÍDEOS
│   ├── Intro (desbloqueado no início)
│   ├── Flashbacks (desbloqueados por progresso)
│   └── Conclusão (final)
│
├── FASE TRACKER
│   ├── Fase actual (1-4)
│   ├── Tempo decorrido
│   └── Progresso visual
│
├── HINTS SYSTEM
│   ├── "Estamos stuck na Fase X"
│   ├── Hint 1 (suave)
│   ├── Hint 2 (médio)
│   ├── Hint 3 (solução)
│   └── Cooldown entre hints (5 min?)
│
├── ARQUIVO DIGITAL (Fase 3)
│   ├── Diário de Miguel
│   ├── Relatórios médicos
│   ├── Fotografias antigas
│   ├── Registos de "acidentes"
│   └── Desenhos de João
│
├── CÓDIGO ENTRY
│   ├── Inserir código para desbloquear conteúdo
│   └── Feedback (correcto/incorrecto)
│
└── EXTRAS
    ├── Soundtrack/Ambience (opcional)
    ├── Timer (opcional)
    └── Notas dos jogadores
```

### Conexão Físico ↔ Digital

| Elemento Físico | Trigger | Resultado Digital |
|-----------------|---------|-------------------|
| QR na caixa | Scan | Inicia jogo, vídeo intro |
| Código da Fase 1 | Input na app | Confirma desbloqueio, pode mostrar cutscene |
| Código da Fase 2 | Input na app | Desbloqueia Arquivo Digital (Fase 3) |
| QR em documento especial | Scan | Áudio de confissão? Vídeo extra? |
| Código final | Input na app | Vídeo conclusão |

---

## 3. HINT SYSTEM (Baseado nos Melhores)

### Como os Tops Fazem

| Jogo | Sistema de Hints |
|------|------------------|
| **Unlock!** | App dá hints progressivos com penalidade de tempo |
| **Exit** | Cartas de hints em 3 níveis (pista → mais pista → solução) |
| **Hunt a Killer** | Website/app com hints por puzzle específico |
| **Escape Room: The Game** | Decoder hints nos materiais |

### Sistema Proposto para Orfanato

```
HINT FLOW

1. Jogador abre app → "Preciso de ajuda"

2. "Em que fase estás?"
   □ Fase 1 - Crime Scene
   □ Fase 2 - Testemunhos
   □ Fase 3 - O Passado
   □ Fase 4 - Evidências Finais

3. "Que puzzle estás a tentar resolver?"
   [Lista de puzzles dessa fase]

4. HINT LEVEL 1 (Nudge)
   "Já reparaste que todas as autópsias mencionam a mesma hora?"
   [Timer: 3 min até próximo hint]

5. HINT LEVEL 2 (Direction)
   "A hora 03:33 aparece nas três autópsias. O que acontece se..."
   [Timer: 3 min até próximo hint]

6. HINT LEVEL 3 (Solution)
   "O código é 0333 - a hora exacta das três mortes."
```

### Princípios dos Hints

- **Nunca dar solução imediata** - sempre 3 níveis
- **Contextualizar** - hints fazem parte da narrativa ("O detective sénior sugere...")
- **Sem penalização severa** - não queremos frustrar, queremos ajudar
- **Opcional** - jogadores podem ignorar hints se quiserem challenge

---

## 4. CLUE DESIGN (Inspirado em Hunt a Killer)

### O que Hunt a Killer Faz Bem

1. **Autenticidade** - jornais em papel de jornal real, caligrafia diferente por personagem
2. **Layers** - interior da caixa também tem puzzles
3. **Cross-media** - número de telefone que podes ligar de verdade
4. **Não hand-holding** - tens de trabalhar pela solução

### Aplicação no Orfanato

**Autenticidade nos Documentos:**
- Autópsias em papel timbrado médico
- Testemunhos em papel de bloco policial
- Diário de Miguel em caderno escolar
- Fotografias com aspecto envelhecido
- Cartas das freiras em papel de carta antigo

**Easter Eggs & Layers:**
- Interior da caixa pode ter mapa do orfanato
- Verso de fotografias tem anotações
- Envelopes têm carimbos com datas relevantes
- Manchas de café/chá em alguns documentos (realismo)

**Detalhes que Importam:**
- Cada personagem tem caligrafia única
- Erros ortográficos nas cartas de crianças
- Linguagem formal nos documentos oficiais
- Linguagem religiosa nas cartas das freiras

---

## 5. TESTEMUNHOS - QUANTIDADE & QUALIDADE

### Análise de Jogos Similares

| Jogo | Testemunhos/Docs | Tamanho Médio |
|------|------------------|---------------|
| Hunt a Killer (1 box) | 8-12 documentos | 1-3 páginas cada |
| Chronicles of Crime | ~10 personagens | Diálogos curtos na app |
| Detective Society | 15-20 documentos | Mix de tamanhos |

### Recomendação para Orfanato

**Fase 2 - Testemunhos:**

| Prioridade | Personagem | Tamanho | Razão |
|------------|------------|---------|-------|
| **ESSENCIAL** | Madre Superiora | 2 pág | Mentirosa principal, contradições chave |
| **ESSENCIAL** | Dr. António | 1.5 pág | Fez autópsias, viu marcas antes |
| **ESSENCIAL** | Lucas (17) | 1 pág | Viu vulto, detalhes temporais |
| **ESSENCIAL** | Ana (15) | 1 pág | "Vê" Sofia - chave sobrenatural |
| **ESSENCIAL** | Matilde (12) | 0.5 pág | Viu enforcamento impossível |
| **ESSENCIAL** | Manuel (caseiro) | 1 pág | Tem chaves, contradição portas |
| **IMPORTANTE** | Padre Augusto | 1 pág | Fala em metáforas, sugere sobrenatural |
| **IMPORTANTE** | Irmã Helena | 1 pág | Sabe de Miguel e Beatriz |
| **SECUNDÁRIO** | Irmã Clara | 0.5 pág | Ouviu choros |
| **SECUNDÁRIO** | Irmã Mariana | 0.5 pág | Comida reduzida |
| **SECUNDÁRIO** | Rosa (cozinheira) | 0.5 pág | Confirma castigos |
| **OPCIONAL** | Pedro (14) | 0.5 pág | Encontrou objectos |
| **OPCIONAL** | Outros órfãos | 1 pág total | Snippets curtos |

**Total sugerido:** 10-12 testemunhos (12-15 páginas)

---

## 6. VÍDEOS - PRODUÇÃO

### Opções de Produção

| Método | Custo | Qualidade | Tempo |
|--------|-------|-----------|-------|
| Filmado com actores | €€€€ | Alta | Semanas |
| Motion graphics + VO | €€ | Média-Alta | Dias |
| AI Video (Runway, Pika) | € | Variável | Horas |
| Slideshow + VO + música | € | Média | Horas |
| Text-based + ambience | Grátis | Baixa | Horas |

### Recomendação: Híbrido AI + Motion Graphics

**Vídeo Intro (2-3 min):**
1. Imagens AI do orfanato (Midjourney/DALL-E)
2. Motion graphics para texto/transições
3. Voice-over profissional ou AI (ElevenLabs)
4. Música de suspense (royalty-free ou AI)
5. Sound design (passos, sinos, choros distantes)

**Elementos a Criar:**
- Exterior do orfanato (noite, nevoeiro)
- Corredor escuro
- Capela vazia
- Cisterna no jardim
- Placa "Orfanato Nossa Senhora das Dores"
- Polícia a chegar
- Silhuetas dos corpos (sem ser gráfico)

**Vídeo Conclusão (1-2 min):**
- Flashbacks das mortes das crianças (subtis)
- Os três espíritos
- Justiça/Vingança
- "Caso encerrado - causa: desconhecida"

### Tools para Vídeo

| Fase | Tool |
|------|------|
| Imagens | Midjourney, DALL-E 3, Stable Diffusion |
| Video de imagens | Runway Gen-2, Pika Labs |
| Voice-over | ElevenLabs, Play.ht |
| Música | Suno, Udio, Epidemic Sound |
| Edição | DaVinci Resolve (grátis), CapCut |
| Motion graphics | Canva, After Effects |

---

## 7. TECH STACK PARA APP

### Opções

| Abordagem | Pros | Cons |
|-----------|------|------|
| **Web App (PWA)** | Cross-platform, sem app store, fácil update | Precisa internet, menos "app feel" |
| **React Native** | Cross-platform, app stores | Mais complexo, aprovação stores |
| **Flutter** | Performance, cross-platform | Learning curve |
| **No-code (Glide, Adalo)** | Rápido, fácil | Limitações, custos mensais |

### Recomendação: Progressive Web App (PWA)

**Porquê:**
- Funciona em qualquer device com browser
- Pode funcionar offline (cached)
- Sem processo de aprovação de app stores
- Fácil de actualizar
- Pode ser "instalada" no home screen

**Tech Stack Sugerido:**
```
Frontend: React ou Vue.js
Hosting: Vercel ou Netlify (grátis)
Videos: YouTube unlisted ou Cloudflare Stream
Database: Supabase ou Firebase (para hints/analytics)
```

---

## FONTES

- [Exit: The Game series](https://www.wargamer.com/escape-room-games)
- [Unlock! series mechanics](https://www.wargamer.com/escape-room-games)
- [Escape Room in a Box physical locks](https://www.wargamer.com/escape-room-games)
- [Chronicles of Crime QR mechanics](https://www.ultraboardgames.com/chronicles-of-crime/game-rules.php)
- [Chronicles of Crime review](https://www.thefamilygamers.com/chronicles-of-crime/)
- [Hunt a Killer puzzle design](https://smartbitchestrashybooks.com/reviews/hunt-killer-subscription-box/)
- [Hunt a Killer clue authenticity](https://www.themanual.com/culture/hunt-a-killer-subscription-box/)
- [Hybrid escape room design](https://emeraude-escape.com/en/format/digital-escape-room/)
- [Mystery puzzle design principles](https://rpg.stackexchange.com/questions/3919/designing-puzzle-based-mysteries)
- [Digital escape room AI integration](https://www.verygood.ventures/blog/how-its-made-digital-escape-room-ai-driven-game-powered-by-gemini-and-flutter)

---

*Research compiled: December 2024*
