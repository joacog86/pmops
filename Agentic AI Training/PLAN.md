# Plan — Entrenamiento Agentic AI en 4 semanas (10h/semana)

`[Wiki: ai-agent-taxonomy, cccd-framework, ai-product-evals, ai-agents-for-pms, pm-career-market-2026]` + `[Memory: skill-gaps-tracker, agent-learning-log, InversionCockpit memory]` + `[Claude]`

## Context

Joaco quiere formarse de manera independiente en Agentic AI para posicionarse en roles de AI PM / Agentic Platform PM. Pidió un plan de 4 semanas, con proyectos, que cubra el ciclo completo (ideación → diseño → orquestación → testing → deploy) y que sea vendible profesionalmente sin perder tiempo.

Lo que la exploración cambió del brief original:

- **No arrancamos de cero.** Ya existen dos sistemas agénticos reales: los agentes de Job Search (v1 onboarding → v4c scheduler cloud, con `agent-learning-log.md` de frases para entrevista) y el council de The Playmaker (tool loop propio en `toolLoop.js`, prompts versionados vía EngineSpec, A/B harness `ab-prompt-rewrite.mjs`, backtest suite, cost ledger). Son mejores que cualquier ejercicio de curso.
- **El gap está diagnosticado en `Skills to Master/skill-gaps-tracker.md`**: (a) "deployed an agentic system others use, with operational-impact metrics", (b) evaluar AI en producción (Factorial, Tymit piden LangFuse/LangSmith), (c) hands-on con no-code automation (n8n/Zapier/Make — Abacum, Foundever). Ninguno se cierra leyendo.
- **Genesys / Kore / UiPath / n8n** vinieron de networking informal, no de un proceso vivo. Se tratan como landscape de mercado + n8n hands-on (JDs lo piden) + UiPath gratis (Academy). Genesys y Kore no tienen sandbox libre: overview y comparativa, tope 2h.
- **Horas:** ~10h/semana. Eso alcanza para 1 proyecto real por semana + 3 certificaciones gratuitas cortas. No alcanza para el HF Completion cert (Unit 4 / GAIA es un sumidero de código) ni para certificar en cada plataforma enterprise.
- **Evidencia objetivo (elegida por Joaco):** proyectos con métricas, certificaciones en LinkedIn, story bank + CV actualizados. Sin contenido publicado en este ciclo.

## Principios de diseño

1. **El ciclo de vida es la columna vertebral.** Cada semana es dueña de una o dos etapas y produce UN artefacto contra un sistema real. Etapas: Ideación/Diseño → Orquestación/Build → Testing/Evals → Deploy/Operación.
2. **Un build por semana, sobre vehículos que ya usás.** Job Search para n8n (workflow conocido, se mide contra el baseline actual), The Playmaker para evals (tiene traces reales y harness).
3. **Reparto de las 10h:** 6h build · 3h curso/cert · 1h documentar (learning log + métricas + borrador de historia). Viernes = la hora de documentar. Sin log, la semana no cuenta.
4. **Solo evidencia real.** Historias STAR y bullets de CV se escriben cuando hay número (regla `feedback_behavioral_stories`, `feedback_cv_accuracy`). El learning log captura el concepto + la frase; la historia se promueve al final.
5. **Respetar scope cortado.** En The Playmaker NO tocar: fragmentación de prompt (parked con medición), timeouts (budget de 4 incidentes), blind spots de EngineStudio (Joaco cortó el scope). El fix de la semana 3 sale del error analysis, no se decide antes.

## Estructura de carpetas (nueva)

```
~/Claude/PM Ops/Agentic AI Training/
├── README.md                 ← este plan resumido + tracker semanal (checkboxes + horas reales)
├── templates/
│   └── agent-design-doc.md   ← plantilla reutilizable (semana 1)
├── week-1-design/
├── week-2-build/             ← docker-compose + exports JSON de n8n
├── week-3-evals/
├── week-4-operate/
└── agentic-platform-landscape.md
```

El learning log NO se duplica: se sigue escribiendo en `Job Search/Interviews/agent-learning-log.md` (ya es la fuente de frases para entrevista). Cada semana agrega una entrada `v5-vN`.

---

## Semana 1 — Fundamentos + Ideación/Diseño

**Etapa del ciclo:** ideación y diseño. **Pregunta de la semana:** ¿cómo decido qué merece ser agente, con qué nivel de autonomía, y cómo lo especifico?

| Bloque | Horas | Qué |
|---|---|---|
| Curso | 4h | Hugging Face Agents Course Unit 0 + Unit 1 → **cert Fundamentals** (solo requiere Unit 1). Tomar notas en términos propios: tools / thoughts / actions / observations, chat templates, function calling. |
| Curso | 1h | UiPath Academy — *Agentic Discovery Framework Fundamentals* (gratis): formato "agent stories" para discovery. Es el equivalente enterprise de lo que hacés con user stories. |
| Lectura | 1h | Wiki: `concepts/ai-agent-taxonomy.md` (Cat1/2/3, triage de 5 min), `concepts/cccd-framework.md` (versionar por agency, no por features), `concepts/ai-agents-for-pms.md`. |
| Build | 3h | **Proyecto 1: Agent Inventory + Agent Design Doc.** (1) Inventariar cada agente/automatización que ya tenés (Job Search v1-v4c, council de Playmaker, crons de Vercel, pipelines Modal, guardrail classifier, request classifier) y clasificar cada uno: Cat1/2/3, nivel de agency, control handoffs, blast radius, costo. (2) Crear `templates/agent-design-doc.md`: problema, categoría, nivel de agency v1/v2/v3, tools, memoria, control handoffs, plan de evals, blast radius, presupuesto de costo, métrica de éxito. (3) Escribir el design doc del build de la semana 2 con esa plantilla. |
| Documentar | 1h | Entrada v5 en learning log. Frase candidata: "Clasifico antes de priorizar: la categoría del agente define timeline, equipo y costo; la mayoría de los backlogs son Cat1 disfrazados de Cat2." |

**Definition of done:** cert Fundamentals en LinkedIn · `week-1-design/agent-inventory.md` con ≥8 sistemas clasificados · `templates/agent-design-doc.md` · design doc de la semana 2 firmado · entrada v5 en el log.

**Reto de entrevistador para la semana:** de los ≥8 sistemas del inventario, ¿cuál está sobre-diseñado (Cat2 para un problema Cat1)? Nombrar uno y qué harías distinto.

---

## Semana 2 — Orquestación / Build (n8n + MCP)

**Etapa del ciclo:** orquestación y construcción. **Pregunta de la semana:** ¿qué va en workflow determinístico, qué va en el LLM, y dónde entra el humano?

| Bloque | Horas | Qué |
|---|---|---|
| Curso | 3h | Anthropic Skilljar — *Introduction to Model Context Protocol* → **cert**. Después leer cómo The Playmaker usa el MCP de IOL (cliente OAuth2+PKCE, read-only) para anclar el concepto en código real. |
| Curso | 1h | HF Unit 2: solo la sección smolagents + skim de LangGraph. Objetivo vocabulario (graph state, nodes, edges, checkpointing), no dominio. |
| Build | 5h | **Proyecto 2: Lead triage con human-in-the-loop en n8n (self-hosted, Docker, gratis).** Rehacer en n8n el scan diario de Job Search que hoy corre con Apify + Claude Code: trigger cron → Apify actor → dedupe contra el pipeline/spreadsheet → nodo Claude con el fit-verdict (reusar la lógica de `decode`, no reescribir el evaluador) → digest a Telegram/email con botones aprobar/descartar → escribe solo lo aprobado. Cat1 con un slot LLM. Regla de blast radius: sin capacidad de aplicar, igual que hoy. Guardar `docker-compose.yml` + export JSON en `week-2-build/`. |
| Documentar | 1h | Entrada v6. Métricas a capturar desde el día 1: runs, costo/run (tokens), leads procesados, minutos de revisión manual antes vs. después, fallas por tipo. |

**Por qué rehacer un workflow existente y no construir algo nuevo:** comparar el mismo proceso en dos stacks (Claude Code agent vs. n8n) es la evidencia más fuerte de criterio de plataforma, que es exactamente lo que pide una consultora que "implementa Genesys, Kore, UiPath, n8n". Y el baseline ya tiene números.

**Definition of done:** cert MCP en LinkedIn · workflow n8n corriendo local ≥3 días con digest recibido · tabla comparativa Claude Code vs. n8n (costo, latencia, fallas, mantenimiento) · entrada v6.

**Reto de entrevistador:** ¿qué parte del workflow pusiste en el LLM que podría haber sido una regla? ¿Y al revés?

---

## Semana 3 — Testing / Evals (The Playmaker)

**Etapa del ciclo:** testing y evaluación. **Pregunta de la semana:** ¿cómo sé si el agente funciona, con números, antes y después de un cambio?

| Bloque | Horas | Qué |
|---|---|---|
| Lectura | 1h | Wiki `concepts/ai-product-evals.md` + raw `building-eval-systems-hamel-husain.md`. Método: error analysis (open coding ~100 traces → axial coding → <10 failure modes) → un eval → validar el eval contra labels humanos → CI. |
| Curso | 1.5h | HF Bonus Unit 2 — *Agent Observability and Evaluation* (Langfuse). Objetivo: hablar LangFuse/LangSmith con propiedad (Tymit JD). No integrarlo en Playmaker esta semana. |
| Build | 6.5h | **Proyecto 3: Eval suite del council.** (1) Extraer 50-100 threads reales de KV (`councilThread.js`). (2) Open coding manual: anotar qué salió mal en cada uno, sin taxonomía previa. (3) Axial coding: agrupar en <10 modos de falla, priorizados por frecuencia × severidad. (4) Elegir UN eval para el modo #1 y escribir un LLM-as-judge con la fórmula Role → Context → Goal con ejemplos → definición de labels. (5) Etiquetar 30 casos a mano y medir acuerdo del judge; iterar hasta ≥90%. (6) Correr baseline sobre los 50-100. (7) Un fix, elegido por el error analysis, publicado como versión nueva de EngineSpec (crear + publicar + activar, no editar defaults). (8) Re-correr → before/after. Reusar el patrón de `app/scripts/ab-prompt-rewrite.mjs` (aserciones sobre comportamiento, no sobre texto del prompt). Tope de gasto de evals: 10 USD, medido con `lib/usage.js`. |
| Documentar | 1h | Entrada v7 + `week-3-evals/eval-report.md`: N traces, tabla de failure modes, accuracy del judge vs. humano, before/after del fix, costo total. |

**Fuera de scope explícito:** fragmentación de prompt, timeouts, blind spots de EngineStudio, migración de `userPrefix`. Si el error analysis apunta al reentry bug del backtest, se anota como hallazgo, no se arregla acá (es engine, no council).

**Definition of done:** `eval-report.md` con los 5 números · judge validado ≥90% vs. 30 labels humanos · versión de EngineSpec publicada con changelog · entrada v7.

**Reto de entrevistador:** ¿por qué confiás en el judge? ¿Qué pasa si el judge y vos discrepan en el 15% de los casos? ¿Cuál de los dos está mal?

---

## Semana 4 — Deploy / Operación + Landscape enterprise + Venderlo

**Etapa del ciclo:** deploy, monitoreo, mejora continua (CC4-CC6 del CC/CD). **Pregunta de la semana:** ¿qué significa "en producción" para un agente y cómo lo explico a un cliente que usa Genesys o UiPath?

| Bloque | Horas | Qué |
|---|---|---|
| Curso | 2h | UiPath Academy — *Introduction to Agentic Automation* (gratis, corto). Abrir Studio Web (community, gratis) y armar un agente mínimo con Agent Builder + un paso de Action Center (HITL enterprise). Objetivo: haber tocado la herramienta, no certificar. El Associate queda como opcional post-plan. |
| Lectura | 2h | Genesys Cloud AI Studio + Agent Copilot (overview y demo en genesys.com; si Genesys Beyond tiene curso gratuito de Digital Bots, hacer solo el módulo intro). Kore.ai Academy *XO Platform Basic* (gratis con cuenta). Tope 2h en total. Preguntas guía: ¿dónde vive el LLM en cada una? ¿Cat1/2/3 nativo? ¿Cómo hacen HITL, evals y versionado de prompts? |
| Build | 3h | **Proyecto 4: Operar lo construido.** (a) n8n: pasar el workflow a schedule real con error workflow, log de runs y contador de costo; correrlo toda la semana y recolectar 5 días de métricas; runbook de 1 página (qué se rompe, cómo me entero, cómo hago rollback). (b) Playmaker: convertir el eval de la semana 3 en `app/scripts/verify-council-eval.mjs` para que corra en `npm run verify` como regression gate (deploy del eval, no del feature). |
| Artefacto | 2h | `agentic-platform-landscape.md`: matriz Cat1/2/3 × etapa del ciclo × plataforma (Claude Agent SDK / Claude Code, n8n, UiPath, Kore.ai, Genesys, LangGraph). Cuándo usar cuál, qué resuelve cada una del ciclo, dónde entra el PM. Es la pieza que te vuelve "vendor-agnostic" ante una consultora. |
| Venderlo | 1h | Actualizar `skill-gaps-tracker.md` (cerrar lo que cerraste, con evidencia). Elegir 2-3 builds con número para promover a story bank (`Job Search/Interviews/behavioral/`) y proponer bullets para CV base vs. tailored según reglas. Agregar 3 certs a LinkedIn. |

**Definition of done:** 5 días de métricas reales del workflow n8n · runbook · verify script en el suite de Playmaker · landscape publicado · tracker actualizado · 2-3 historias candidatas con números · 3 certs en LinkedIn.

**Reto de entrevistador:** un cliente con Genesys te pide "un agente". ¿Qué le preguntás primero, y qué le decís que NO le vas a construir en el v1?

---

## Certificaciones (todas gratuitas)

| Cuándo | Cert | Horas | Cierra |
|---|---|---|---|
| S1 | Hugging Face Agents — Fundamentals (Unit 1) | 4h | vocabulario base, señal LinkedIn |
| S2 | Anthropic — Introduction to MCP | 3h | orquestación / integraciones |
| S1 + S4 | UiPath Academy — Agentic Discovery Framework + Intro to Agentic Automation (badges de curso) | 3h | vocabulario enterprise, HITL con Action Center |
| Post-S4 (opcional, con más peso) | **UiPath Agentic Automation Associate (UiAAA)** — certificación oficial con examen Pearson VUE, 150 USD. Training gratis en Academy (learning plan "Agentic Automation Developer Associate", ~12-15h). Cubre Agent Builder, GenAI connectors (incl. Claude), context grounding, guardrails, HITL con Action Center, Maestro, evals. | 12-15h + examen | la única cert vendor-oficial del plan; encaja directo con "implementamos UiPath" |
| Skip | HF Completion (Unit 4 / benchmark), Microsoft/LinkedIn Career Essentials, Kaggle 5-day (event-based, revisar fechas post-plan), Anthropic AI Fluency (opcional post-plan) | — | no mueven la aguja en 4 semanas |

**Peso relativo en LinkedIn:** HF y Anthropic son certificados de curso (gratis, sin examen supervisado) pero de marcas que un recruiter de AI reconoce al instante. UiPath Associate es la única con examen oficial; si querés UNA cert "seria", es esa, y la decisión de pagar los 150 USD se toma en la semana 4 con el training ya empezado.

## Métricas del plan (para saber si funcionó)

- Semana 4: ≥2 sistemas agénticos operando con métricas de impacto propias (n8n triage + eval gate en Playmaker).
- Eval del council con judge validado ≥90% y un before/after publicado.
- 3 certs en LinkedIn, 4 entradas nuevas en el learning log con frase de entrevista cada una.
- Tracker de gaps: ítems (a) evals en producción y (c) no-code automation pasan de "abierto" a "con evidencia".

## Riesgos y cómo se mitigan

- **Se come el tiempo el build de n8n** (integraciones Apify/Telegram que no salen): el design doc de la semana 1 fija scope mínimo; si el viernes de S2 no hay digest, se recorta a email y se documenta el gap como en v4a.
- **El error analysis del council no da un modo de falla claro**: igual se entrega la taxonomía y el judge sobre el modo más frecuente; el fix pasa a S4.
- **Genesys/Kore sin sandbox**: aceptado, tope 2h, se cubre con la matriz landscape.
- **Semanas de trabajo pesadas**: la unidad mínima es el viernes de documentación; si una semana cae, se corre todo una semana, no se comprimen dos.

## Archivos críticos

- Crear: `~/Claude/PM Ops/Agentic AI Training/` (estructura arriba).
- Extender: `Job Search/Interviews/agent-learning-log.md` (v5-v8), `Skills to Master/skill-gaps-tracker.md`.
- Leer en Playmaker: `app/lib/engine/toolLoop.js`, `app/lib/council/tools/index.js`, `app/lib/engine/spec.js` + `store.js`, `app/scripts/ab-prompt-rewrite.mjs`, `app/lib/councilThread.js`, `app/lib/usage.js`; memoria `project_prompt_fragmentation_parked.md`, `project_council_timeout_budget.md` (leer antes de tocar nada).
- Reusar en Job Search: lógica de `decode` (fit verdict), pipeline de Apify existente.

## Verificación end-to-end

- Cada semana se cierra con su Definition of Done marcada en `README.md` con horas reales.
- Los números del eval report deben ser reproducibles: guardar el dataset etiquetado y el script del judge en `week-3-evals/`.
- Las métricas de n8n salen del log de runs, no de estimaciones (regla `feedback_cost_claims_from_telemetry`).
- Antes de promover una historia al story bank: número real + artefacto que lo respalda.

## Primer paso al aprobar

Crear la carpeta y el `README.md` tracker, y arrancar el Proyecto 1 (inventario) en esta misma sesión.
