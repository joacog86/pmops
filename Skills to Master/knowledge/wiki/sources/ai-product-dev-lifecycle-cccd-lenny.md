# Why your AI product needs a different dev lifecycle — Reganti & Badam (Lenny's Newsletter)
**Fecha:** 2025-08 | **Likes:** 547 | **Fuente:** lennysnewsletter.com/p/why-your-ai-product-needs-a-different
**Procesos:** [ai-products] [roadmap] [strategy]

## TL;DR
Los AI products rompen los supuestos del desarrollo de software tradicional en dos formas fundamentales: son no-deterministas y requieren negociar un tradeoff entre agency y control. Reganti y Badam — con experiencia en +50 implementaciones de AI en OpenAI, Google y Amazon — proponen el framework CC/CD (Continuous Calibration/Continuous Development) para navegar estas diferencias de forma intencional.

## Core idea
**Dos razones por las que no podés buildear AI products como buildearías software:**

1. **Non-determinism en ambos extremos:** los usuarios interactúan de formas abiertas e impredecibles (prompts, comandos de voz), y el sistema responde de forma no-garantizada — el mismo input puede producir outputs distintos. Diseñás para comportamiento probable, no determinista.

2. **Agency-control tradeoff:** cada vez que le das al sistema más autonomía para actuar (booking, ejecutar código, resolver tickets), cedés control. Si le das demasiada agency sin datos que la justifiquen, perdés visibilidad y la confianza del usuario.

**El framework CC/CD — 6 pasos en loop:**

El loop tiene dos fases: Continuous Development (CD, antes de lanzar) y Continuous Calibration (CC, después de lanzar). La metáfora central: la agency se gana con datos, no se concede de entrada.

| Paso | Fase | Qué hacés |
|------|------|-----------|
| CD1 | Development | Scope capability + curate data — versionar por agency level (v1 = alta control, baja agency), armar un reference dataset de 20–100 ejemplos |
| CD2 | Development | Set up application — buildear solo lo necesario para el nivel actual; no sobreingeniear; asegurá control handoffs para humanos |
| CD3 | Development | Design evals — definir cómo medís éxito antes de lanzar |
| — | Transición | Deploy — con logs, evals y control handoffs en su lugar |
| CC4 | Calibration | Run evals — correr los evals sobre datos de usuarios reales |
| CC5 | Calibration | Analyze behavior — revisar manualmente los casos de bajo score para identificar patrones de error |
| CC6 | Calibration | Apply fixes — ajustar prompts, modelos o arquitectura según los patrones encontrados; este es el momento de ingeniería más sofisticada |

**Ejemplo: customer support automation**
- v1 (alta control, baja agency): solo rutear tickets al departamento correcto. Eval = routing accuracy.
- v2: sugerir resoluciones para revisión humana. Eval = relevance of suggestions.
- v3: resolver tickets scoped de forma autónoma. Llega acá solo cuando v1 y v2 probaron que el sistema entiende los casos edge.

## Cuándo aplicarlo
- **Cuando priorizás una iniciativa de AI:** en lugar de definir v1 por feature set, definilo por nivel de agency. ¿Qué puede hacer el sistema de forma observable y segura hoy?
- **Cuando algo se rompe en producción:** el framework diagnostica en qué paso falló el diseño — generalmente en CD1 (scope demasiado ambicioso) o CD3 (evals no diseñados antes de lanzar).
- **Cuando un stakeholder pide "más AI" o "más autonomía":** CC/CD da el lenguaje para responder con datos: "podemos subir el nivel de agency cuando los evals de v2 muestren X% de accuracy."

## Qué significa para Joaco
Este es el framework conceptual que une todo el trabajo de AI PM. En entrevistas para N26 o cualquier rol de AI products, poder describir el ciclo de desarrollo AI en estos términos — agency ladder, earned autonomy, evals como prerequisito de cada nivel — demuestra que entendés los trade-offs reales, no solo el hype. En tu trabajo en Kantox, si alguna vez evaluás features de AI, la pregunta "¿en qué versión de la agency ladder estamos?" es el filtro más útil para discusiones de scope con eng.

## Comparaciones y tensiones
- [[sources/beyond-vibe-checks-evals-aman-khan-lenny]] — El paso CD3 es exactamente el framework de evals de Khan. Los dos artículos son complementarios: CC/CD te dice cuándo y por qué diseñar evals; Khan te enseña cómo escribirlos bien.
- [[concepts/ai-agent-taxonomy]] — Cat 1 (Deterministic) del framework de Farooq & Rajwani mapea directamente a v1 de CC/CD: alta control, baja agency, fácil de observar y medir. Cat 3 (Multi-Agent) = v3+, y el mismo consejo aplica: no vayas ahí sin datos de las versiones previas.

## Watch out
- **No empieces por v3.** El error más común es scoping un sistema fully autonomous desde el día 1 porque "eso es lo que queremos lograr". El costo: si algo falla, tenés una cadena de errores enredados sin un punto claro de falla.
- **Los evals también fallan.** Si en CC5 los evals muestran todo verde pero los usuarios se quejan, tu eval está midiendo lo incorrecto. CC6 a veces significa reconstruir el eval, no solo el sistema.

[[concepts/cccd-framework]] [[concepts/ai-product-evals]] [[concepts/ai-agents-for-pms]] [[entities/aishwarya-reganti]] [[entities/kiriti-badam]]
