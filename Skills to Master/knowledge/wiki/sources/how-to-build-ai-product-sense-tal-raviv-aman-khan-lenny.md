# How to build AI product sense — Tal Raviv & Aman Khan (Lenny's Newsletter)
**Fecha:** 2026-02 | **Likes:** 565 | **Fuente:** lennysnewsletter.com/p/how-to-build-ai-product-sense
**Procesos:** [ai-products] [interview-prep]

## TL;DR
El problema no es la falta de contenido sobre AI — es que las interfaces de consumo (ChatGPT, Lovable, Granola) ocultan cómo funciona todo. La solución de Raviv y Khan: usá coding agents (Cursor, Claude Code) para trabajo no técnico diario. Al ver cómo el agente piensa, busca archivos, llama tools y maneja el contexto, desarrollás intuición sobre AI products de adentro hacia afuera, no de diagrama en diagrama.

## Core idea
La tesis central: los PMs que usan Cursor/Claude Code para strategy, priorización, análisis y decisiones aprenden más sobre cómo funcionan los AI products en 3 meses que en 3 años de usar ChatGPT. Porque los coding agents muestran su trabajo — podés leer el razonamiento, ver los tool calls, y sentir cuándo el contexto se llena.

**4 conceptos que se aprenden en la práctica (no de infografías):**

**RAG (Retrieval-Augmented Generation):** antes de responder, el agente busca los archivos relevantes. "Fancy term for looking things up before answering." Si el agente no tiene el archivo correcto en contexto, el output es malo — no porque el modelo sea tonto, sino porque no tiene la información. Implication para product: cuando un AI feature da respuestas incorrectas, la primera pregunta es "¿tiene acceso a la información correcta?", no "¿es el modelo adecuado?"

**Memory (AGENTS.md):** una nota adhesiva en cada conversación. Es literalmente un archivo de texto que se prepende al inicio de cada thread. No hay magia. Implication: memory tiene costo — todo lo que ponés en AGENTS.md ocupa context window en cada chat. Hay que ser intencional sobre qué va en memory (siempre relevante) vs. qué se trae on-demand con RAG (relevante solo para esta tarea).

**Context engineering:** el arte de decidir qué va en el context window de cada chat. Memory, RAG, tool definitions, historial de conversación, instrucciones — todo compite por el mismo espacio limitado. Karpathy popularizó el término para reemplazar "prompt engineering" — porque en sistemas reales no se trata de escribir un buen prompt, sino de diseñar qué información entra al contexto y cuándo.

**Context rot:** a medida que el context window se llena, la performance del LLM se degrada — a veces bien antes de llegar al límite técnico. El agente se vuelve más olvidadizo y menos preciso en tareas de alta fidelidad. El antídoto: threads nuevos con contexto curado, no conversaciones que crecen indefinidamente.

## Cuándo aplicarlo
- **Para responder preguntas de AI products en entrevistas:** en lugar de describir conceptos abstractos, podés decir "vi esto en mi propio setup de Claude Code — cuando lleno el context window con muchos archivos, la calidad baja notablemente." Experiencia real > definición de libro.
- **Para diagnosticar problemas en features AI que buildeás:** si el output es malo, el framework de diagnóstico es: ¿tiene el RAG correcto? ¿La memory es relevante? ¿Está el context window saturado?
- **Para explicar AI products a stakeholders no técnicos:** RAG = "el agente busca antes de responder"; memory = "la nota adhesiva de la conversación"; context rot = "se vuelve menos preciso cuando le damos demasiada información de golpe."

## Qué significa para Joaco
Ya tenés la experiencia que el artículo prescribe — usás Claude Code diariamente para trabajo estratégico. Lo que podés hacer ahora es articularlo en lenguaje técnico correcto. Context rot, RAG, AGENTS.md, context engineering — estos términos te dan el vocabulario para hablar de AI products con credibilidad en una entrevista de N26 o Anthropic sin necesitar ser engineer. La pregunta "¿cómo definirías context engineering?" tiene una respuesta muy diferente si la contestás desde experiencia propia vs. desde una definición aprendida.

## Comparaciones y tensiones
- [[sources/build-personal-ai-copilot-tal-raviv-lenny]] — El copilot de ChatGPT Projects es el punto de entrada; este artículo propone el siguiente nivel: Cursor/Claude Code donde el agente muestra su razonamiento. El copilot da output; los coding agents dan intuición.
- [[sources/ai-product-dev-lifecycle-cccd-lenny]] — El CC/CD framework describe el ciclo de desarrollo desde afuera. Este artículo da la experiencia interna de los conceptos (RAG, memory, context window) que ese ciclo asume como conocidos.

## Watch out
- **Cursor para no-código tiene una curva de entrada.** El artículo simplifica el setup — en la práctica, configurar MCP tools, AGENTS.md y el personal OS requiere 2–3 horas de inversión inicial. Vale la pena, pero no es "download y listo."
- **Context rot es task-dependent.** Se siente mucho más en análisis de datos y código que en brainstorming creativo. No asumas que cada tarea se degrada igual a medida que crece el thread.

[[concepts/ai-product-sense]] [[concepts/ai-agents-for-pms]] [[entities/tal-raviv]] [[entities/aman-khan]]
