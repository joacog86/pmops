# Beyond vibe checks: A PM's complete guide to evals — Aman Khan (Lenny's Newsletter)
**Fecha:** 2025-04 | **Likes:** 566 | **Fuente:** lennysnewsletter.com/p/beyond-vibe-checks-a-pms-complete
**Procesos:** [ai-products] [metrics]

## TL;DR
Evals son la habilidad que separa a los PMs que prototipen de los que construyen AI products que duran. La mayoría de los equipos se obsesiona con prompts y modelos, pero es la capacidad de medir sistemáticamente la calidad del sistema AI lo que determina si mejora o se rompe en producción. Aman Khan — director en Arize AI, ex Spotify y Apple — argumenta que escribir buenos evals es la skill definitoria del AI PM en 2025.

## Core idea
Evals son scoring mechanisms que miden si tu sistema AI está haciendo lo que debe. No son tests binarios de pass/fail como en software tradicional — son más parecidos a exámenes de manejo: el entorno es variable, el sistema es no-determinista, y el éxito es cualitativo.

**3 tipos con trade-offs distintos:**

| Tipo | Qué hace | Pros | Contras |
|------|----------|------|---------|
| Human evals | Feedback loops con usuarios (👍👎) o labelers expertos | Directamente atado al usuario final | Escaso, costoso, señal débil |
| Code-based evals | Checks programáticos (¿el string X está en el output?) | Barato y rápido de escribir | Pobre para tareas abiertas o subjetivas |
| LLM-as-judge | Un LLM externo califica el output del sistema principal | Escala, usa lenguaje natural, explicable | Requiere setup + validación inicial; probabilístico |

En la práctica los mejores sistemas combinan los tres. LLM-as-judge es el más poderoso para PMs porque se escribe en lenguaje natural — no requiere código.

**La fórmula de 4 partes para un eval efectivo:**
1. **Role** — darle al juez-LLM un contexto ("eres un evaluador de texto")
2. **Context** — los datos reales del sistema que va a calificar
3. **Goal** — qué querés medir y qué es "bueno" vs. "malo" en términos precisos
4. **Terminology/label** — definir con exactitud los términos ("¿qué significa exactamente 'friendly'?")

**El ciclo iterativo — 4 fases:**
- **Collection:** capturar interacciones reales + edge cases; empezar con 10–100 ejemplos con labels humanos como ground truth. Spreadsheets sirven para arrancar.
- **First-pass evaluation:** escribir el eval, correrlo contra el dataset, apuntar a ≥90% de accuracy contra el ground truth humano.
- **Iteration loop:** refinar el prompt del eval (few-shot examples ayudan), expandir el dataset, iterar sobre el propio sistema cuando el eval muestra problemas.
- **Production monitoring:** correr evals continuamente sobre interacciones en vivo; buildear dashboards de eval atados a business outcomes. Los evals bien diseñados se convierten en leading metrics para stakeholders.

## Cuándo aplicarlo
- **Antes de lanzar cualquier feature AI:** definir al menos un eval que responda "¿cómo sabemos que esto funciona?" — es el equivalente PM de escribir tests antes de shippear.
- **Cuando hacés un cambio al sistema** (nuevo modelo, prompt diferente, nueva arquitectura): los evals son el benchmark objetivo que justifica el cambio frente a eng y stakeholders.
- **Para comunicar calidad AI:** un dashboard que muestra "hallucination rate = 2.3%" o "friendly tone = 94%" es más convincente que "el output se ve bien en mis pruebas manuales."

## Qué significa para Joaco
Estás en el contexto exacto donde esto importa. En entrevistas para N26, poder articular "yo definiría los evals como primer paso antes de shippear cualquier feature AI" señaliza AI PM seniority real — no hype de demo. Y en tu trabajo actual en Kantox, es la diferencia entre un prototipo que "se ve bien" y poder demostrar con datos que el feature AI hace lo que dice. Si alguna vez construís algo AI en un side project, empezá por un eval de hallucination simple — te fuerza a pensar en el usuario antes de optimizar el modelo.

## Comparaciones y tensiones
- [[sources/ai-product-dev-lifecycle-cccd-lenny]] — El framework CC/CD tiene evals como paso CD3 explícito. Los dos artículos se complementan directamente: Khan enseña a escribir los evals; Reganti + Badam enseñan dónde encajan en el ciclo de desarrollo.
- [[sources/ai-prototyping-for-pms-colin-matthews-lenny]] — Matthews propone prototipar rápido para validar el "qué"; evals proponen medir sistemáticamente el "qué tan bien". No se contradicen — son fases distintas (prototipo → evals → producción).

## Watch out
- **No arranques complejo.** Un eval de hallucination o tone con ≥90% accuracy contra ground truth humano es el objetivo de fase 1. Equipos que buildean sistemas de eval sofisticados desde el día 1 terminan sin confiar en ninguno.
- **El eval mide lo que medís, no lo que importa.** Un "friendliness score" alto no garantiza satisfacción real. Conectá tus evals a señales de producto (retention, task completion) para validar que el proxy vale.

[[concepts/ai-product-evals]] [[concepts/ai-agents-for-pms]] [[entities/aman-khan]]
