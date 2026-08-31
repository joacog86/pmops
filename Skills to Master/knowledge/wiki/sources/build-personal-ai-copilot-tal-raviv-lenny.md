# Build your personal AI copilot — Tal Raviv (Lenny's Newsletter)
**Fecha:** 2025-07 | **Likes:** 714 | **Fuente:** lennysnewsletter.com/p/build-your-personal-ai-copilot
**Procesos:** [ai-products] [discovery]

## TL;DR
Los LLMs fallan para trabajo estratégico no porque sean malos, sino porque les falta contexto. Tal Raviv — PM que enseñó a 20.000+ personas a usar AI en el trabajo — propone construir un "AI copilot": un LLM con contexto persistente sobre tu rol, empresa y proyectos que actúa como un colega de largo plazo, no como un oráculo de prompts mágicos.

## Core idea
El problema central: cuando usás ChatGPT para trabajo estratégico sin contexto, el output es genérico. La solución no es aprender prompts más sofisticados — es darle al LLM el mismo background que le darías a un nuevo colega en su primera semana.

**Los 4 pasos para construir tu copilot:**

| Paso | Qué hacés | Cómo |
|------|-----------|------|
| Hire | Definir el rol, valores y comportamientos del copilot | Instructions (system prompt del Project) |
| Onboard | Darle contexto de empresa, equipo y rol | Project knowledge: strategy decks, org chart, retros, performance reviews |
| Kick off | Arrancar cada iniciativa en su propio thread | Dictate en stream of consciousness — no estructures los pensamientos de antemano |
| Work | Prompts conversacionales simples | La pregunta clave: "What is the single most important thing I should do next?" |

**Projects** (disponibles en ChatGPT, Claude, Gemini) son la interfaz ideal: combinan instructions (system prompt), knowledge (contexto persistente) y chat threads (por iniciativa). Si tu empresa no tiene acceso a Projects, Cursor sirve como alternativa — mismo concepto con otra interfaz.

**El hábito del "gossip":** cuando algo cambia — un stakeholder que cambia de posición, datos que contradicen una hipótesis, una conversación de pasillo que upende el plan — lo actualizás en el copilot como si le contaras a un colega al lado. Speech-to-text de forma natural, sin formato. El copilot recuerda y lo referencia después.

**La pregunta más poderosa del sistema:** `"What is the single most important thing I should do next?"` — funciona porque el LLM tiene contexto de company strategy, stakeholders, retrospectivas y el estado actual de la iniciativa. Sin ese contexto, la pregunta es inútil.

## Cuándo aplicarlo
- **Al arrancar una iniciativa compleja** (PRD, discovery sprint, lanzamiento): kick off un thread nuevo en tu copilot y tirá todo lo que sabés en stream of consciousness antes de estructurar.
- **Cuando bloqueado en qué hacer después:** la pregunta "what's the single most important thing" con contexto completo suele destrabar mejor que brainstorming solo.
- **Para mantener coherencia entre proyectos:** el copilot recuerda que el stakeholder X tiene estas preferencias, que la iniciativa Y tuvo ese aprendizaje — contexto que se pierde entre reuniones.

## Qué significa para Joaco
Ya estás haciendo esto con Claude Code en PM Ops — este artículo valida y extiende ese sistema. La diferencia entre "chat con Claude" y un copilot real está en la onboarding: ¿subiste el strategy deck de Kantox? ¿El org chart? ¿Tus últimas retros? Cuando lo hacés, la calidad del output cambia cualitativamente. También relevante para entrevistas: poder decir "construí mi sistema personal de PM sobre Claude Code Projects" con detalle de cómo onboardeaste el contexto es un diferenciador de señal alta.

## Comparaciones y tensiones
- [[sources/how-to-build-ai-product-sense-tal-raviv-aman-khan-lenny]] — Raviv + Khan van más lejos en el artículo siguiente: proponen usar Cursor/Claude Code (no ChatGPT) porque muestran el razonamiento del agente. El copilot de Projects es el primer paso; coding agents son el siguiente nivel de intuición.
- [[sources/openclaw-lenny-claire-vo]] — Claire Vo opera stacks de 9 agentes coordinados; Raviv propone un solo copilot conversacional. No son contradictorios — son puntos distintos en el espectro de complejidad. Empezá por el copilot antes de orquestar agentes.

## Watch out
- **Projects tienen límites de contexto.** ChatGPT Projects limita el knowledge a ~20 archivos. Si necesitás más contexto, Cursor (que no tiene ese límite de forma tan estricta) es la alternativa real.
- **El copilot es tan bueno como el onboarding.** Si solo decís "soy PM en una empresa fintech" sin subir documentación real, el output sigue siendo genérico. El investment en onboarding es el diferencial, no la herramienta.

[[concepts/ai-agents-for-pms]] [[entities/tal-raviv]] [[entities/lennys-newsletter]]
