# A guide to AI prototyping for product managers — Colin Matthews (Lenny's Newsletter)
**Fecha:** 2025-01 | **Likes:** 734 | **Fuente:** https://www.lennysnewsletter.com/p/a-guide-to-ai-prototyping-for-product
**Procesos:** [discovery] [prd] [ai-products] [user-research]

## TL;DR
Los PMs sin background técnico pueden construir prototipos funcionales en minutos usando tools de AI. La clave no está en elegir el tool "correcto" sino en entender cuándo usar cada capa: chatbots para algo simple de una página, cloud envs (v0, Bolt, Replit, Lovable) para prototipos reales, IDEs con AI (Cursor) solo si sabés programar. El artículo no solo cubre qué tool usar — cubre cómo salir del loop cuando el prototipo se rompe.

## Core idea

### Las tres capas de tools

| Tool | Mejor para | Limitación clave |
|------|-----------|-----------------|
| Claude / ChatGPT | Prototipo de una página, sin diseño complejo | No hostea código; difícil editar directamente |
| **v0** | Diseño bonito por default (Next.js + Shadcn) | Overhead si solo necesitás algo rápido |
| **Bolt** | Prototipos rápidos con diseño flexible | Solo client-side — sin auth real, sin backend persistente |
| **Replit** | Tools internos, dashboards, lógica con Python | UI más básica que v0/Bolt |
| **Lovable** | App con auth, Supabase, integraciones | Sin editor de código — todo vía prompts |
| Cursor / Copilot | Si ya sabés programar | No es para PMs no técnicos |

Regla de oro para elegir: ¿Necesitás backend/auth? → Lovable o Replit. ¿Solo frontend visual? → Bolt o v0. ¿Una página simple? → Claude directamente.

### Seis casos de uso con prompts listos

1. **Desde diseño en Figma** → Bolt. Prompt: *"Build a prototype to match this design. Match it exactly. Use Tailwindcss. Match styles, fonts, spacing, and colors."* + screenshot.
2. **Desde cero con buen diseño** → v0. Prompt: *"Build a prototype for [x]. This tool should: [behaviors]. Implement a simple initial iteration."*
3. **Dashboard de datos** → Replit. Prompt: *"Build a prototype for [x]. Use Python and Streamlit."*
4. **Desde boceto a mano** → v0. Prompt: *"Convert the hand-drawn sketch to a functional prototype. Make it in the style of [producto que te gusta]."*
5. **Desde PRD** → Bolt. Prompt: incluir el PRD completo + *"Focus on frontend functionality — do not include a server or database. Use Tailwindcss."*
6. **Tool interno personalizado** → Replit. Prompt: *"Build a tool that does [x]."* + descripción de behaviors.

### Cuatro estrategias cuando el prototipo se rompe

**Reflection** — el más importante. Forzá al AI a planear antes de escribir código:
*"Build me a calorie tracking app. Start by detailing the minimum requirements. Do not write any code."*
También sirve para salir de loops: pedí una lista de posibles causas del error, no que lo arregle.

**Batching** — contra-intuitivo pero crítico. Menos contexto al inicio, no más. Empezá siempre por el data model:
*"Implement only the client-side view. Use a basic data model that tracks entries with description and calories."*

**Specificity** — cuanto más específico, mejor. Incluí: qué tecnologías, qué partes cambiar, qué archivos o líneas tocar.

**Lost context** — cuando el AI reescribe todo: usá el sistema de checkpoints del tool para rollback, y enfocá las instrucciones en un archivo a la vez. Combiná con Reflection + Batching para prevenirlo.

## Cuándo aplicarlo

- **Discovery temprana, antes del PRD**: en lugar de describir una feature en texto, construí un prototipo con Bolt en 30 minutos y mostráselo a 2-3 usuarios. El feedback que obtenés es cualitativamente distinto — reaccionan a algo real, no a una idea abstracta.
- **Stakeholder buy-in difícil**: un prototipo clickeable convence más que 5 slides. Si tenés que defender una dirección en un steering meeting, un demo de 10 minutos en Bolt vale más que un mockup estático.
- **Documentar el "cómo"**: cuando el requisito es difícil de escribir en texto (flujos complejos, micro-interactions), un prototipo de Lovable es más claro que 3 páginas de specs visuales.
- **Validar viabilidad técnica propia**: si necesitás entender si algo es buildable antes de hablar con engineering, construí una versión cruda con Replit. No para mostrarla — para entender las constraints.

## Qué significa para Joaco

En entrevistas de product sense para N26 o roles PM Lead, saber construir un prototipo funcional en una sesión de discovery es una habilidad diferenciadora que pocos PMs tienen — y que demuestra AI product fluency concreta, no teórica. Para el día a día en B2B SaaS, esto cambia la dinámica de discovery: podés llegar a una sesión de usuario con algo clickeable en lugar de un deck, acortando el ciclo de validación de semanas a días. Para el goal de 5K EUR/mes en proyectos propios, también es directo: podés prototipar y testear ideas sin depender de un dev.

## Comparaciones y tensiones

- [[sources/build-personal-ai-copilot-tal-raviv-lenny]]: Tal Raviv recomienda usar Lovable + Cursor para construir prototipos desde el copilot. Matthews y Raviv se complementan: Matthews da el framework de qué tool elegir; Raviv muestra cómo integrarlo en un flujo de trabajo diario.
- [[concepts/ai-agents-for-pms]]: el prototipado con AI es una habilidad de "Cat 1" — uso personal del PM, no diseño de agentes para usuarios. Distinto scope.

## Watch out

- Bolt no soporta backend real (auth persistente, multi-user, pagos) — si el prototipo necesita esas features, usá Lovable con Supabase desde el inicio en lugar de migrar después.
- Los prototipos generados con AI se rompen fácil ante cambios no específicos — nunca pidas "arregla todos los bugs a la vez". Siempre un cambio específico por iteración.

[[concepts/ai-prototyping-tools]] [[entities/colin-matthews]]
