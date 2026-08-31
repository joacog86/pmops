# Kantox PM OS — entrenamiento para Senior PM, Operations Automation & Enablement (N26)

## Context

Joaco quiere entrenarse para un puesto específico: **Senior Product Manager – Operations Automation & Enablement (OAE)**, N26 Barcelona ([JD](https://n26.com/en-eu/careers/positions/7996996)). No es un rol de "PM Lead" de gestión de personas — es un IC senior que diseña soluciones de IA agéntica para automatizar procesos de Banking Operations, hace process mining/workflow redesign, y traduce pain points operacionales en specs de producto, todo bajo compliance bancario (GDPR, EU AI Act).

Hoy Joaco es PM de un solo producto en Kantox (Dynamic Hedging, B2B FX) — IC puro, sin evidencia documentada de autoridad sobre otros PMs. No hay ningún antecedente en este workspace de un proyecto "PM OS para todo el equipo de Kantox": es una idea nueva.

La motivación real del pedido: usar un proyecto de trabajo real (llevar su PM OS personal — el setup de Claude Code + skills que ya usa día a día — al resto del equipo de PMs de Kantox) como **terreno de práctica** para las tres competencias exactas que pide el JD de N26:
1. Diseñar un sistema de IA agéntica que automatiza procesos de alto volumen (los workflows repetitivos de un PM: PRDs, procesamiento de research, meeting notes, roadmaps)
2. Mapear procesos actuales, rediseñarlos, y medir el impacto (tiempo ahorrado, adopción — análogo a FTE impact / cost-per-unit)
3. Venderlo cross-funcionalmente sin autoridad formal — convertir un dolor operacional en una propuesta concreta, gestionar stakeholders

Resultado esperado de esta sesión: (1) un mapa de gap de skills contra el JD + cómo cerrarlos, (2) una guía de cómo trabaja alguien en este rol día a día, y (3) el proyecto Kantox PM OS armado en dos fases — **propuesta primero, estructura compartida después** (decisión explícita de Joaco) — que además queda documentado para convertirse en historia de entrevista para N26.

## Restricción clave: PC personal vs. PC del laburo

Joaco marcó algo importante: esta sesión corre en su máquina personal, pero el desarrollo real del Kantox PM OS (la propuesta con contenido específico de Kantox, y la construcción del sistema compartido) tiene que pasar en la PC del trabajo — no acá. Esto no es solo preferencia, es donde vive el contexto real (herramientas internas de Kantox, compañeros, datos de trabajo) y probablemente el criterio correcto de manejo de información de la empresa.

Esto separa el trabajo en dos bloques con una única entrega de handoff entre ellos:

**Acá (PC personal, esta sesión) — genérico, sin datos de Kantox:**
- Deliverable 1 (skill-gap map vs. JD)
- Deliverable 2 (cómo trabaja alguien en este rol)
- Deliverable 3 (paquete de handoff): la metodología + el esqueleto de propuesta + el playbook de rollout, listos para que Joaco los abra en la PC del laburo y los complete ahí con contenido real de Kantox

**En el laburo (PC de Kantox, más adelante, lo hace Joaco ahí) — específico de Kantox:**
- Escribir la propuesta real (con workflows, dolores y compañeros reales)
- Armar la estructura compartida (`shared-os/`) con las herramientas que tenga disponibles ahí
- Rollout con el equipo de PMs

Sigue el mismo patrón que ya usa el sistema de Discovery personal (`~/Claude/Discovery/Opportunities/<Nombre>/context.md` → se "gradúa" a workspace propio importando `context.md` como base). Acá aplica igual: lo que armamos hoy es el `context.md`/briefing que se importa cuando arranque el proyecto real en la PC del laburo.

## JD snapshot (fuente de verdad para todo lo demás)

| Pilar | Qué pide el JD |
|---|---|
| Enterprise Transformation & AI Leadership | Diseñar y desplegar soluciones de IA agéntica end-to-end para procesos de alto volumen; ser el "AI champion" de Banking Operations; traducir ML/AI a sistemas operacionales |
| Process Intelligence & Optimization | Process mining, workflow mapping, rediseño end-to-end; partnering con Conversational Banking/Platform (Salesforce, AWS); métricas de FTE impact y cost-per-unit |
| Cross-Functional Execution | Traducir pain points operacionales en specs de producto; compliance GDPR/EU AI Act; operational readiness para lanzamientos |
| Requisitos duros | 5+ años PM/Process Engineering/Ops Transformation; experiencia escalando ML/RPA/Agentic AI con ahorros medibles; manejo hands-on de APIs, prompt engineering, agentic frameworks; failure demand analysis; banking/fintech + compliance; Power BI/SQL; comunicación ejecutiva |

## Deliverable 1 — Mapa de gap de skills vs. JD

Tabla honesta: requisito del JD → evidencia actual de Joaco (de su CV/experiencia real, sin inflar — regla ya establecida en memoria) → gap → cómo cerrarlo (skill/framework interno ya disponible, o práctica nueva a través del proyecto Kantox PM OS).

Ejemplos de filas ya identificables con lo que sabemos:
- *IA agéntica end-to-end* → tiene experiencia usando Claude Code intensivamente, no diseñando sistemas agénticos para terceros → gap real → cerrarlo construyendo el Kantox PM OS como sistema agéntico multiusuario (no solo personal)
- *Process mining / failure demand analysis* → no tiene experiencia formal con esta metodología → gap → aprenderla e **incorporarla como método de descubrimiento** para mapear los workflows actuales de los PMs de Kantox (Fase 1 del proyecto)
- *Métricas FTE impact / cost-per-unit* → su lenguaje de impacto hoy es más output-based → gap → forzar el proposal doc de Kantox a usar este vocabulario exacto (tiempo ahorrado por PM/semana, equivalente a FTE)
- *Power BI / SQL* → tiene SQL de trabajos anteriores (no sobrevender, ya hay memoria de esto: `feedback_cv_accuracy` y `feedback_cv_writing`) → verificar nivel real antes de reclamarlo

No inventar experiencia — cualquier claim en el gap map se valida contra CV real (`interviews/interview-bank/cv/cv_content_base.py`) antes de escribirse.

**Archivo:** `interviews/N26 - Ops Automation Enablement/skill-gap-map.md` (nueva carpeta de oportunidad, seguiendo el patrón existente `N26 - Lending/`)

## Deliverable 2 — Cómo trabaja alguien en este rol (operating practices)

Guía corta y accionable (no un ensayo) de las prácticas de trabajo día a día de un PM de Ops Automation & Enablement, derivada directamente de los 3 pilares del JD:
- Ciclo de process mining → workflow mapping → failure demand analysis → rediseño
- Loop de prototipado de soluciones agénticas (spec → prompt/orchestration → medir → iterar)
- Cadencia de stakeholder management cross-funcional sin autoridad jerárquica (partnering, no mandato)
- Checkpoints de compliance (GDPR, EU AI Act) integrados al proceso de spec, no al final
- Cómo se reporta impacto (dashboards tipo Power BI, lenguaje de FTE/cost-per-unit)

**Archivo:** mismo folder, `interviews/N26 - Ops Automation Enablement/how-oae-pms-work.md`

## Deliverable 3 — Paquete de handoff: esqueleto de propuesta + metodología (se escribe ACÁ, se completa en el laburo)

Nada de contenido específico de Kantox se escribe en esta máquina. Lo que armamos acá es la plantilla pensada y la metodología, para que en la PC del laburo Joaco (con o sin Claude ahí) solo tenga que completarla con información real — no arrancar de cero.

Contenido del handoff:
1. **Esqueleto de la propuesta** — las mismas 6 secciones que pedía la Fase 1 original (problema actual, process mapping, propuesta, impacto proyectado en términos de FTE/tiempo-por-PM, plan de rollout sin autoridad formal, riesgos/compliance), cada una como una plantilla con preguntas guía a responder con datos reales de Kantox — no con contenido ya escrito
2. **Metodología aplicada** — cómo hacer el process mapping y el failure demand analysis paso a paso (condensado del Deliverable 2), lista para aplicar directamente a los workflows reales de los PMs de Kantox
3. **Playbook de rollout sin autoridad formal** — resumen accionable (no la sesión interactiva completa) de lo reutilizable de `executive-onboarding-playbook` (consultant mindset / body of evidence) y `altitude-horizon-framework` (Cascading Context Map): empezar con 1-2 PMs voluntarios, medir, escalar
4. **Checklist de qué NO llevar** — recordatorio explícito de qué tipo de contenido (datos sensibles, credenciales, info de clientes) nunca debe pasar por una sesión de Claude Code en la PC personal ni en la del laburo sin las herramientas/permisos correctos

**Archivo:** `kantox-pm-os/handoff-briefing.md` (carpeta nueva en la raíz de PM Ops) — documento único, autocontenido, pensado para copiarse/pegarse o abrirse tal cual en la PC del laburo. `kantox-pm-os/context.md` queda como memoria viva de este lado (por qué existe el proyecto, decisiones tomadas acá), siguiendo la misma convención de `context.md` que usa `~/Claude/Discovery/Opportunities/<Nombre>/`.

## Deliverable 4 — Kantox PM OS, Fase 1 y 2 reales (se hacen en la PC del laburo, fuera del alcance de esta sesión)

Cuando Joaco esté en la PC de Kantox:
1. Abre `handoff-briefing.md`, lo usa como base de contexto (mismo patrón que "graduar" una oportunidad del sistema de Discovery)
2. Completa la propuesta real con workflows/dolores/compañeros concretos → propuesta final
3. Una vez validada por él, arma la estructura compartida (`shared-os/onboarding.md`, `templates/`, `workflows.md`, `metrics.md`) con las herramientas que tenga disponibles en el laburo (puede o no ser Claude Code — depende de qué tenga habilitado ahí)
4. Rollout con el equipo

Esto queda fuera del alcance de esta sesión — se documenta como próximo paso, no se ejecuta acá.

## Deliverable 5 — Conexión con el interview bank (loop cerrado)

Una vez exista el proposal.md real, generar:
- `interviews/interview-bank/jds/n26-oae.md` — el JD guardado (sigue convención existente de la carpeta `jds/`)
- Una historia STAR en `interviews/interview-bank/behavioral/` sobre construir el Kantox PM OS — cuando el proyecto tenga tracción real, no antes (regla de memoria: nunca usar scaffolds generados como historia final, construir desde la experiencia real de Joaco vía conversación)
- Si hay métricas de impacto una vez rodado, una entrada en `interviews/interview-bank/execution-metrics/`

Esto no se ejecuta ahora — se deja como próximo paso explícito, condicionado a que el proyecto avance de verdad en Kantox.

## Secuencia de ejecución (todo dentro del alcance de esta sesión, en la PC personal)

1. Deliverable 1 (skill-gap map) — requiere confirmar con Joaco su nivel real en SQL/Power BI antes de escribir claims
2. Deliverable 2 (how OAE PMs work) — standalone, no depende de nada
3. Deliverable 3 (handoff-briefing.md + context.md) — esqueleto y metodología, sin contenido específico de Kantox
4. Deliverable 5 (conexión con interview bank) — solo el JD guardado (`jds/n26-oae.md`); la historia STAR y las métricas de ejecución quedan diferidas hasta que el proyecto tenga tracción real en el laburo

Deliverable 4 (propuesta real + shared-os) queda explícitamente fuera de esta sesión — es trabajo de Joaco en la PC de Kantox, usando el handoff-briefing.md como punto de partida.

## Verificación

- Deliverable 1: cada claim de skill se contrasta contra `cv_content_base.py` — cero inflación (regla ya establecida)
- Deliverable 3: el handoff-briefing.md se relee con una sola pregunta — "¿hay acá una sola palabra de contenido específico de Kantox (workflows reales, nombres, dolores concretos)?" — si la hay, se saca; tiene que ser 100% plantilla/metodología reutilizable
- Al cerrar la sesión, correr `/wrap`: esto queda como decisión nueva en `decisions.md` (arrancar el proyecto Kantox PM OS, separado en PC personal / PC laburo) y como sesión en `sessions/`
