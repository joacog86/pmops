# Job search: role-discovery expansion + Cindy Zhu toolkit integration

## Context

Joaco quiere cambiar de trabajo pero no sabía a qué tipo de rol apuntar. Encontró dos guías de Cindy Zhu ("Run your job hunt with Claude" y "Beat ATS: 6-agent resume system") y pidió implementarlas.

Ya existe infraestructura real de job search en este workspace — no partimos de cero:
- **Discovery**: `interviews/interview-bank/job-pipeline.md` — criterio hardcodeado hoy a "PM mid-senior en fintech regulado", corrido por un **agente cloud semanal** (vía `schedule`/`RemoteTrigger`) contra un repo git separado (`interviews/` → remote `pm-interview-agent`, distinto del repo raíz `pmops`). Fuente A = Greenhouse/Lever de una lista curada; Fuente B = TrueUp (pendiente de auth).
- **CV tailoring**: `interview-bank/cv/` — `cv_engine.py` + `cv_content_base.py` + `build.py`, un flujo por oportunidad ya documentado en `INDEX.md`.
- **Interview prep**: `interview-coach` skill (`decode`, `prep`, `mock`, `stories`...) + `interview-bank/story-matrix.md` + historias STAR reales.

Antes de tocar nada, resolvimos en conversación la pregunta real que bloqueaba todo — "no sé a qué rol apuntar" — mirando evidencia real de su historia (story-matrix, el proyecto no pedido "Kantox PM OS", el skill-gap-map de N26 OAE). Resultado: **4 arquetipos objetivo**, no 1:

| # | Arquetipo | Evidencia | Mecanismo de sourcing |
|---|---|---|---|
| A | AI-Native Ops/Automation PM (cross-industria) | Kantox PM OS (en curso, no pedido), Xepelin disbursement automation | Fuente A/C (job boards) |
| B | Regulated FinTech Domain PM (lending/payments/KYC) | IOL, Xepelin, Kantox, N26 en curso — el carril probado | Fuente A/C (job boards) |
| C | AI Product PM (producto de IA para usuarios externos) | Uso intensivo y genuino de herramientas de IA; gap real: nunca shippeó IA para terceros | Fuente A/C (job boards) |
| D | Civic Tech / Knowledge & Governance (gobernanza, democracia digital, knowledge mgmt/mind maps) | Uso personal genuino de graphify + PM Ops knowledge wiki; cero experiencia de sector — sourcing distinto | Landscape mapping, no job boards (ver abajo) |

El resto de este plan integra las piezas útiles de las dos guías **dentro de la infraestructura existente** (no en paralelo) y las extiende a los 4 arquetipos.

## Alcance

### 1. Ampliar Discovery Criteria a 4 arquetipos
Editar `interviews/interview-bank/job-pipeline.md`, sección "Discovery Criteria": reemplazar el criterio único de fintech por los 4 arquetipos de la tabla de arriba, cada uno con su fuente de sourcing. Mantener geografía (Barcelona/remote-EU) y seniority (6+ yrs, IC o team-lead) como filtros transversales.

Como `interviews/` es su propio repo (`pm-interview-agent`) leído por el agente cloud programado, el cambio necesita commit + push a ese remote para que el próximo run semanal lo tome — **pedir confirmación antes de pushear** (política: no commitear/pushear sin que Joaco lo pida).

### 2. Fuente C — Apify LinkedIn scraping (de la guía 1)
Cierra un gap ya documentado en `job-pipeline.md` (Coaching Notes 2026-07-07): Wise, Klarna, Bunq, Curve, Revolut, Starling no tienen board público bajo Fuente A. Apify cubre eso vía scraper de LinkedIn (`curious_coder/linkedin-jobs-scraper`), y además es la única vía viable para buscar por keyword los arquetipos C y D, que no tienen lista de empresas curada.

- **Setup manual de Joaco (Claude no puede hacer OAuth en esta sesión)**: Claude → Settings → Connectors → Add custom connector → `https://mcp.apify.com` → autorizar.
- Documentar en `job-pipeline.md` como "Source C", con nota de que hay que verificar si el sandbox del agente cloud tiene el mismo connector conectado (si no, correr Fuente C manualmente en sesión local y mergear a mano, mismo patrón ya usado para Fuente B).
- Reusar la "mega prompt" de la guía como plantilla de research, adaptada a los 4 arquetipos en vez de un solo rol.

### 3. Nueva vía de exploración — Arquetipo D (no es un pipeline de aplicación)
D no tiene postings conocidos ni lista de empresas — es landscape mapping, no scanning de job boards. Crear `interviews/interview-bank/exploration/civic-tech-knowledge-governance.md` (mismo patrón que `Discovery/Opportunities/<Nombre>/context.md`: memoria viva, no funnel con fechas/estado):
- Mapeo inicial de organizaciones (govtech/civic tech, knowledge tools, fundaciones que financian el espacio) vía WebSearch — guardar URLs de cada fuente (regla `feedback_save_research_sources`), marcar confianza de cada dato (regla `feedback_research_confidence`).
- Puente de posicionamiento explícito: Kantox PM OS + PM Ops knowledge wiki + uso de `graphify` + patrón recurrente de "stakeholder alignment sin autoridad formal" + compliance regulatorio (KYC/BCRA) como transferible a confianza/gobernanza.
- Gap honesto: cero experiencia de sector — anotar que la entrada probable es informational interviews / red, no aplicación en frío a un posting.

### 4. Outreach emails (de la guía 1)
Capacidad nueva — hoy el sistema solo cubre aplicaciones formales vía ATS. Extender el flujo documentado en `interview-bank/cv/INDEX.md`:
- `interview-bank/outreach-template.md` (infraestructura compartida, mismo nivel que `cv/`): plantilla de email 120-150 palabras, dato específico de la empresa + un resultado cuantificado propio + pregunta suave al cierre — no pitch duro.
- Por oportunidad, cuando se identifique un contacto real (fuentes públicas únicamente, nunca inventado): `interviews/<Company - Role>/outreach.md` con el draft.
- **Restricción dura, igual que la guía**: nunca auto-enviar. Joaco revisa y manda cada email a mano. Contacto marcado VERIFIED/UNVERIFIED según la fuente.

### 5. Mejorar el tailoring de CV con el 6-agent system (de la guía 2)
No se crea un sistema paralelo — el motor (`cv_engine.py`, `cv_content_base.py`, `build.py`) ya existe y funciona. Se agregan pasos explícitos al workflow documentado en `cv/INDEX.md`:
- **Scout + Matcher**: antes de escribir `cv-content.py`, buscar 2-3 postings similares al puesto, extraer keywords recurrentes, diffear contra `cv_content_base.py` → gap real (sin keyword stuffing), anotado en `tailoring-notes.md`.
- **Formatter**: ya resuelto en gran parte (logos no rompen parsing de Greenhouse, según nota existente) — dejar como chequeo rápido, no rehacer.
- **Surgeon**: hacer explícita la fórmula XYZ ("logró X medido por Y haciendo Z") como lente al re-angular bullets — ya se practica implícitamente, ahora nombrado.
- **Prioritizer**: reordenar secciones/bullets por relevancia al JD específico — paso nuevo explícito.
- **QA**: checklist de cierre antes de presentar el draft (naturalidad de keywords, limpieza ATS, sin invención — regla `feedback_cv_accuracy`).

### 6. Registrar la decisión
- Agregar fila a `decisions.md` (root de PM Ops): decisión de los 4 arquetipos y por qué (evidencia real, no brainstorm abstracto).
- Log en `sessions/2026-08-24.md`.
- Memoria nueva: `project_job_search_target_archetypes.md` en `~/.claude/projects/-Users-joaco-Claude-PM-Ops/memory/`, linkeada desde `MEMORY.md` — para que sesiones futuras no vuelvan a arrancar desde "no sé a qué rol apuntar".

## Archivos clave

| Archivo | Acción |
|---|---|
| `interviews/interview-bank/job-pipeline.md` | Editar Discovery Criteria (4 arquetipos + Source C) |
| `interviews/interview-bank/exploration/civic-tech-knowledge-governance.md` | Crear (nuevo) |
| `interviews/interview-bank/outreach-template.md` | Crear (nuevo) |
| `interviews/interview-bank/cv/INDEX.md` | Editar Workflow (pasos Scout/Matcher/Surgeon/Prioritizer/QA) |
| `decisions.md`, `sessions/2026-08-24.md` | Append |
| `~/.claude/projects/.../memory/project_job_search_target_archetypes.md` + `MEMORY.md` | Crear/editar |

## Verificación
- Releer `job-pipeline.md` y confirmar que los 4 arquetipos + Source C quedaron documentados con criterios verificables (no solo prosa vaga).
- Confirmar que `exploration/civic-tech-knowledge-governance.md` tiene al menos 3-5 organizaciones reales con fuente/URL y nivel de confianza — no inventadas.
- Confirmar que `outreach-template.md` y el patrón `outreach.md` por oportunidad quedan documentados en `INDEX.md`/`job-pipeline.md`, con la restricción de no-auto-send explícita.
- Confirmar que `cv/INDEX.md` refleja los 5 pasos nuevos sin romper el flujo actual (`build.py` sigue funcionando igual).
- Antes de pushear el repo `interviews/` (remote `pm-interview-agent`), confirmar con Joaco — no pushear por default.
- Recordar a Joaco el paso manual pendiente: conectar el connector de Apify en Settings → Connectors (Claude no puede completarlo en esta sesión).
