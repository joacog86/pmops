# Why SaaS freemium playbooks don't work in AI — Vikas Kansal (Lenny's Newsletter)
**Fecha:** 2026-05 | **Likes:** 307 | **Fuente:** https://www.lennysnewsletter.com/p/why-saas-freemium-playbooks-dont
**Procesos:** [strategy] [ai-products] [metrics]

## TL;DR
En SaaS tradicional, un usuario free cuesta esencialmente cero. En AI, cada prompt quema GPU. Esto crea una paradoja: tenés que regalar magia para que el usuario llegue al aha moment, pero si la magia es demasiado buena, nadie paga. Vikas Kansal (Google AI subscriptions) describe cómo reconstruir el paywall desde cero para AI.

## Core idea

El SaaS freemium playbook asume que gatear tus mejores features impulsa upgrades. En AI, esto no funciona: los usuarios necesitan experimentar la magia antes de querer pagar, y el costo de compute la hace imposible de regalar sin límite.

**Los 3 pilares del AI paywall moderno:**

| Pilar | Qué gatear | Ejemplo |
|---|---|---|
| 1. Intensidad de uso | Velocidad, volumen, context window — no calidad del modelo | Google AI: Plus/Pro/Ultra tiers; Midjourney: Fast Mode vs. Relax Mode |
| 2. Outcomes | Features que colapsan tareas multi-step en un click; vendés "horas ahorradas", no "mejores respuestas" | Intercom Fin: $0.99 por resolución; Chrome auto-browse en tiers altos |
| 3. Modalidades pesadas | Video, simulaciones 3D, modelos frontier de alto costo — convert compute liability en incentivo premium | Genie 3 exclusivo para top tier |

**Para sostener la monetización:**
- **Catalysts de conversión:** multi-turn metric (5+ follow-ups en una sesión), cross-platform trigger (desktop + mobile en 48h), "continue this chat" nudge con soft paywall
- **Stickiness:** bundleá AI con utilities pegajosas (storage, codebase indexing, prompt libraries) para sobrevivir el churn episódico
- **Semantic routing:** queries simples → micro-model (barato y rápido); queries complejas → frontier model (con metering). El usuario siente magic, vos protegés el margen

## Cuándo aplicarlo

**Al diseñar el modelo de monetización de un AI product:** El framework de 3 pilares reemplaza directo al "premium features" playbook de SaaS. Arrancá preguntando: ¿qué consume más compute en nuestros power users? Eso es lo que se gatear, no lo que "suena premium".

**Al revisar por qué un AI product tiene churn alto:** AI usage es episódico por naturaleza — el problema no es el producto, es que el habit no está formado. La solución es bundle con algo sticky, no más features.

**En entrevistas sobre estrategia de producto:** Monetización de AI es una pregunta frecuente para roles en fintech/neobancos que están lanzando features de AI. El framework de pilares da estructura inmediata.

## Qué significa para Joaco
N26 va a enfrentar exactamente esta tensión si lanza features de AI (PFM, spending insights, savings nudges): ¿cuánto AI gratis antes del paywall? El pilar 2 (gate outcomes, no features) es el argumento para no gatear el "análisis de gastos" pero sí gatear el "plan de ahorro automático que ejecuta transfers". Para Kantox, la pregunta equivalente es compute-as-a-cost en contextos de pricing dinámico. El semantic routing es táctica accionable ahora.

## Comparaciones y tensiones
- Contrasta con [[concepts/product-led-growth]]: PLG asume que el producto se vende solo a través del free tier — en AI, el free tier puede bankrupt antes de que el flywheel gire. Kansal agrega el constraint de compute cost que PLG ignora.
- Conecta con [[concepts/ai-product-evals]]: el multi-turn metric como conversion catalyst es esencialmente un leading indicator de valor entregado — la misma lógica que hace útiles los evals como proxy de calidad.

## Watch out
- No rompas la confianza del usuario con cancellations difíciles. AI usage es episódico — si el usuario no puede pausar fácilmente, se va para siempre en lugar de volver en el próximo proyecto.
- Los tiers que definís hoy estarán obsoletos en 6 meses cuando los modelos frontier se commoditicen. Construí flexibilidad estructural: siempre tener room en el top tier para la próxima breakthrough.

[[concepts/ai-monetization]] [[entities/vikas-kansal]] [[concepts/product-led-growth]] [[concepts/ai-product-evals]]
