# Agentic AI Training — 4 semanas

Plan completo: [`PLAN.md`](PLAN.md) · también en Word: [`PLAN.docx`](PLAN.docx)
Este tracker en Word: [`README.docx`](README.docx) · Plantilla: [`templates/agent-design-doc.docx`](templates/agent-design-doc.docx)
Los `.md` son la fuente de verdad; los Word/Excel se regeneran desde ellos.
Learning log (frases para entrevista): [`Job Search/Interviews/agent-learning-log.md`](../Job%20Search/Interviews/agent-learning-log.md)
Gaps que este plan cierra: [`Skills to Master/skill-gaps-tracker.md`](../Skills%20to%20Master/skill-gaps-tracker.md)

**Inicio:** 2026-09-11 · **Cierre previsto:** 2026-10-09 · **Presupuesto:** 10h/semana (6 build · 3 curso · 1 documentar, viernes)

## Columna vertebral

| Semana | Etapa del ciclo | Proyecto | Cert |
|---|---|---|---|
| 1 | Ideación / Diseño | Agent Inventory + Agent Design Doc | HF Agents Fundamentals · UiPath Agentic Discovery |
| 2 | Orquestación / Build | Lead triage HITL en n8n (vs. baseline Claude Code) | Anthropic MCP |
| 3 | Testing / Evals | Eval suite del council de The Playmaker | HF Bonus Unit 2 (sin cert) |
| 4 | Deploy / Operación | Operar n8n 5 días + eval como regression gate + landscape enterprise | UiPath Intro to Agentic Automation |
| 5 (opcional) | — | — | UiPath Agentic Automation Associate (examen 150 USD) |

## Tracker

### Semana 1 — Ideación / Diseño (11 → 18 sep)
- [ ] HF Unit 0 + Unit 1 → cert Fundamentals en LinkedIn
- [ ] UiPath Academy: Agentic Discovery Framework Fundamentals
- [ ] Wiki: `ai-agent-taxonomy`, `cccd-framework`, `ai-agents-for-pms`
- [ ] `week-1-design/agent-inventory.xlsx` revisado y desafiado por Joaco: corregir columna Cat + completar la columna amarilla "Respuesta / corrección"
- [ ] `templates/agent-design-doc.md` validado
- [ ] Design doc del build de S2 (`week-1-design/design-doc-n8n-lead-triage.md`)
- [ ] Entrada v5 en learning log
- Horas reales: __ / 10

### Semana 2 — Orquestación / Build (18 → 25 sep)
- [ ] Anthropic Intro to MCP → cert en LinkedIn
- [ ] HF Unit 2: smolagents + skim LangGraph (vocabulario)
- [ ] n8n self-hosted corriendo (`week-2-build/docker-compose.yml`)
- [ ] Workflow lead triage con digest HITL, ≥3 días corriendo (`week-2-build/*.json`)
- [ ] Tabla comparativa Claude Code vs. n8n (costo, latencia, fallas, mantenimiento)
- [ ] Entrada v6 en learning log
- Horas reales: __ / 10

### Semana 3 — Testing / Evals (25 sep → 2 oct)
- [ ] Wiki `ai-product-evals` + raw Hamel Husain
- [ ] HF Bonus Unit 2 (observability / Langfuse)
- [ ] 50-100 threads extraídos + open coding
- [ ] Taxonomía <10 failure modes
- [ ] LLM-as-judge validado ≥90% vs. 30 labels humanos
- [ ] Fix publicado como versión de EngineSpec + before/after
- [ ] `week-3-evals/eval-report.md` con los 5 números · gasto ≤10 USD
- [ ] Entrada v7 en learning log
- Horas reales: __ / 10

### Semana 4 — Deploy / Operación (2 → 9 oct)
- [ ] UiPath Intro to Agentic Automation + agente mínimo en Studio Web con Action Center
- [ ] Genesys AI Studio / Copilot + Kore.ai XO Basic (tope 2h)
- [ ] n8n en schedule real + error workflow + 5 días de métricas + runbook
- [ ] `verify-council-eval.mjs` en el suite de The Playmaker
- [ ] `agentic-platform-landscape.md`
- [ ] `skill-gaps-tracker.md` actualizado con evidencia
- [ ] 2-3 historias candidatas con número → story bank · bullets CV propuestos
- [ ] 3 certs en LinkedIn
- [ ] Entrada v8 en learning log
- Horas reales: __ / 10

## Métricas del plan
- ≥2 sistemas agénticos operando con métricas propias (n8n triage + eval gate)
- Judge validado ≥90% + before/after publicado
- 3 certs en LinkedIn · 4 entradas nuevas en el learning log
- Tracker de gaps: "evals en producción" y "no-code automation" pasan a "con evidencia"
