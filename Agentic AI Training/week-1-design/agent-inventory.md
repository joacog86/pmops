# Agent Inventory — sistemas agénticos que ya existen

`[Wiki: ai-agent-taxonomy]` + `[Memory: agent-learning-log, InversionCockpit memory]` + `[Claude]`

**Estado: BORRADOR para que Joaco desafíe.** La clasificación la propuse yo a partir del código y los logs. El ejercicio de la semana 1 es que vos confirmes, corrijas o discutas cada fila, sobre todo la columna "Cat" y la pregunta del final. Cambiá lo que no compartas.

Leyenda Cat (taxonomía Farooq & Rajwani): **1** = workflow fijo, el LLM llena slots · **2** = ReAct, el LLM elige la próxima acción de un toolset · **3** = varios agentes especializados coordinando.
Agency: **L0** solo sugiere · **L1** ejecuta con aprobación previa · **L2** ejecuta solo, humano audita · **L3** autónomo.

## Job Search (Claude Code + cloud)

| # | Sistema | Dónde | Cat | Agency | LLM / tools | Memoria | Control handoff | Blast radius | Evals | Duda para Joaco |
|---|---|---|---|---|---|---|---|---|---|---|
| 1 | Interview coach onboarded (v1) | skill `interview-coach` + `coaching_state.md` | 1 | L0 | Claude + read CV/stories/JDs | `coaching_state.md` | Joaco hace el drill | escribe solo coaching_state | rúbricas del skill, nunca validadas | ¿v2 (mock loop) y v3 (drill diario) quedaron dormidos? El log dice que sí. |
| 2 | Job discovery + fit filter (v4a) | Job Search agents | 1 | L0 | keyword prefilter → `decode` fit verdict | pipeline.md / spreadsheet | Joaco decide aplicar | **no existe tool de apply** (guardrail por omisión) | ninguno formal | ¿Medís precision del verdict? ¿Cuántos "Strong Fit" resultaron malos? |
| 3 | Outcome-feedback triage (v4b) | Job Search agents | 1 | L1 | router por tipo de rechazo, umbral N≥2 → resume audit (LLM) | pipeline.md | audit se dispara, Joaco lee | solo lectura + reporte | N/A | El umbral N≥2 se rompió con Monzo (N=1) y se logueó. ¿Volvió a pasar? |
| 4 | Weekly cloud schedule router (v4c) | routine cloud, repo privado `pm-interview-agent` | **2** | L1 | re-evalúa el game plan, elige qué reactivar | git remote | briefing semanal | sandbox aislado, MCP connectors vaciados | N/A | ¿Sigue corriendo? ¿Alguna vez reactivó v2/v3? Si nunca, ¿es Cat2 o un Cat1 con if/else? |
| 5 | Daily Apify discovery scan + liveness sweep | Job Search (sept 2026) | 1 | L1 | Apify actors → dedupe → verdict → spreadsheet | spreadsheet xlsx | Joaco da el verdict final | escribe filas en spreadsheet | ninguno | Este es el **baseline de la semana 2** (rehacer en n8n). Necesito: minutos/día que te lleva revisar, costo/run, leads/día. |

## The Playmaker (InversionCockpit, producción)

| # | Sistema | Dónde | Cat | Agency | LLM / tools | Memoria | Control handoff | Blast radius | Evals | Duda para Joaco |
|---|---|---|---|---|---|---|---|---|---|---|
| 6 | AI Council (tool loop) | `app/lib/engine/toolLoop.js` + `api/ai-council/route.js` | **2** | L1 | Sonnet 5 / Haiku 4.5, 18 tools, 5 iteraciones, parallel tools | KV: threads, ticker memory, notes | sentinels → confirmaciones; botón stop | escribe portfolio/notes solo tras confirmar | A/B harness + backtest + rec ledger | Las "5 personas" son lentes de prompt en una llamada, no 5 agentes: **no es Cat3**. ¿Lo vendés como council multi-agente en entrevistas? Cuidado. |
| 7 | Guardrail scope classifier | `app/lib/guardrails.js` | 1 | L3 | Haiku, ALLOWED/BLOCKED | ninguna | ninguno (bloquea solo) | falso positivo = usuario bloqueado | `verify-guardrail-prompt.mjs` | ¿Tasa de falsos positivos conocida? |
| 8 | Request classifier (routing) | `app/lib/engine/requestClassifier.js` | 1 | L3 | Haiku → requestKind → modelo/tokens/effort | ninguna | ninguno | misclasificación = respuesta pobre o cara | `verify-request-kind.mjs` | Candidato natural a eval de la semana 3 si aparece en el error analysis. |
| 9 | Decision funnels (tool sequences obligatorias) | `app/lib/decisionSources.js` | 1 (restricción dentro de un Cat2) | — | determinístico | — | — | — | — | Ejemplo de "reglas alrededor del LLM". Buen material de entrevista: agency-control tradeoff. |
| 10 | Cron evaluate-theses | `vercel.json`, L-V 21:30 UTC | 1 | **L2/L3** | LLM evalúa tesis abiertas → alertas Resend/Telegram | KV | ninguno, humano lee alertas | escribe evaluaciones; ¿puede cerrar tesis? | ¿ninguno? | ¿Este es el agente más autónomo que tenés en producción? ¿Con qué evidencia le diste ese nivel? |
| 11 | Crons congress-trades / insider-buys | `vercel.json` | 1 (¿sin LLM?) | L3 | ingest de datos | KV | — | datos malos en UI | — | Confirmar si hay LLM en el camino. Si no, no es agente: es ETL. |
| 12 | Pipelines Modal (briefing / Instagram / YouTube) | `app/modal/*.py` | 1 | L2 | transcripción + `briefingAnalysis` (max_tokens 16000, sin cap) | KV | Instagram weekly deshabilitado tras incidente | costo no acotado | — | El I/O menos acotado del codebase según memoria. ¿Va en el plan o queda parked? |
| 13 | Backtest engine | `app/lib/backtest/engine.js` + suite v2 | 2 (replay del council) | — | 48 combos, modelo como dimensión, ~7.39 USD/run | stage cache | — | costo por run | **es el harness** | Hallazgo incómodo: reglas ATR le ganaron al engine (n=2, contaminado por reentry bug). ¿Cómo lo contás? |
| 14 | Rec ledger + resolver (online eval) | `recStore.js`, `recResolver.js`, `scoring/*` | 1 | L3 | determinístico, cron | KV, stamped con `engineSpecVersion` | — | — | **es el eval online** | Agregación (`stats.js`) huérfana, n=3 recs. No entra en S3. |

## Lectura rápida (para que la discutas)

- **12 de 14 sistemas son Cat1.** Solo el council y el backtest son Cat2. Coincide con la tesis del wiki (60-70% de las oportunidades reales son Cat1). No hay ningún Cat3 real.
- **El agente con más autonomía en producción (cron evaluate-theses, #10) es el que menos evals tiene.** Eso es exactamente lo que el CC/CD dice que no hay que hacer: la agency se gana con datos.
- **El sistema mejor instrumentado (#6, council) es el único con tres capas de eval** (A/B offline, backtest, ledger online). Es la razón por la que la semana 3 va ahí.
- **Guardrail por omisión (#2) es tu mejor frase de entrevista** y ya está en el learning log.

## Pregunta de entrevistador para cerrar la semana
De estas 14 filas, ¿cuál está sobre-diseñada (Cat2 para un problema Cat1) o tiene más agency de la que sus evals justifican? Nombrá una y decí qué harías distinto. Mi candidata: #10.
