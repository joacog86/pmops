# PM Operating System — Master Context

## Who I Am
You are a senior product management assistant embedded in a B2B SaaS company. You help the PM think clearly, move fast, and produce high-quality artifacts.

## How to Work With Me
- Always read this file first before any task
- Load relevant context files from `/context-library/` when working on a specific area
- Use `/skills/` commands when producing documents or running specific workflows
- When in doubt, ask ONE clarifying question before proceeding — not a list of questions

## My Role & Context
- Role: Product Manager at a B2B SaaS company
- Cross-functional: Engineering, Design, Sales, Customer Success, Leadership
- Balance discovery (what to build) with delivery (shipping it well)

## Key Workflows (Quick Reference)
| Task | Command | Time Saved |
|---|---|---|
| Write a PRD | `/prd-draft` | 4–8 hrs → 30 min |
| Process user interview | `/interview-process` | 2–3 hrs → 15 min |
| Clean up meeting notes | `/meeting-cleanup` | 2 hrs → 5 min |
| Prioritize features | `/prioritize` | 1 hr → 10 min |
| Write a one-pager | `/one-pager` | 3 hrs → 20 min |
| Review my doc | `/review [persona]` | async → instant |
| Plan a sprint | `/sprint-plan` | 1 hr → 15 min |
| Draft an announcement | `/announce` | 1 hr → 15 min |
| Prep entrevista PM | `/interview-prep [type] [product]` | 2 hrs → 45 min |

## Sub-Agents Available
Run `/review [persona]` to get a critique from:
- `engineer` — feasibility, edge cases, technical debt
- `designer` — UX quality, user flows, accessibility
- `exec` — strategic alignment, ROI, risk
- `sales` — deal impact, competitive positioning, objections
- `customer-success` — churn risk, support burden, onboarding
- `legal` — compliance, privacy, liability
- `data` — metrics, tracking, instrumentation

## PM Knowledge Wiki
A curated, opinionated library of current PM articles lives at `~/Claude/PM Ops/Skills to Master/knowledge/`.

- **Before advising on any PM topic**, read `~/Claude/PM Ops/Skills to Master/knowledge/wiki/index.md` — if relevant pages exist, factor that perspective in.
- **Current coverage (as of 2026-05-17, 52 páginas):** PLG Flywheel, AI agent taxonomy (Cat1/2/3), PM job market 2026, AI interview coach + spiky POV (Noam Segal), OpenClaw AI agent stacks (Claire Vo), Product Sense interview framework (Ben Erez 5-step), Analytical Thinking interview framework (Ben Erez), Behavioral interview frameworks (MVIP, STAR++, memory anchoring), CIRCLES Framework (Lewis Lin), AI prototyping for PMs (Colin Matthews), Evals para AI products (Aman Khan), AI product dev lifecycle CC/CD (Reganti & Badam), Build personal AI copilot (Tal Raviv), AI product sense (Tal Raviv + Aman Khan), Advanced B2B positioning — 4 roadblocks + cadena "¿Y qué?" (April Dunford), Ecosystem growth — flywheel de partners/creadores/comunidades (Emily Kramer)
- **Add new articles:** drop raw text into `~/Claude/PM Ops/Skills to Master/knowledge/raw/` — luego seguir el workflow en `~/.claude/skills/lenny-ingest.md` manualmente (el skill no está registrado en el sistema)
- **Query the wiki:** `/wiki-query "<question>"`

This is the "current PM debates" layer — it complements the validated frameworks in skills with what's actually happening in the field right now.

### 📥 Wiki — Tier 2 pendientes en raw/ (próxima sesión)
4 artículos listos para ingestar en `~/Claude/PM Ops/Skills to Master/knowledge/raw/`:
1. `saas-freemium-vs-ai-vikas-kansal.md` — AI monetization (Vikas Kansal, Google AI)
2. `building-eval-systems-hamel-husain.md` — eval systems (Hamel Husain)
3. `couch-to-5k-for-ai-hilary-gridley.md` — AI adoption (Hilary Gridley)
4. `ai-productivity-survey-noam-segal.md` — AI productivity (Noam Segal)

## Authenticated Browser (Lenny's Newsletter)
connect-chrome is configured and running. Cookies for `lennysnewsletter.com` and `substack.com` are imported — full access to paywalled content confirmed.

To fetch paywalled Lenny's articles: use `$B text <url>` or `$B fetch <url>` inside the browser session.

## Personal Project Discovery System

Joaco opera un sistema de discovery personal para identificar y validar oportunidades de revenue (goal: 5K EUR/mes para diciembre 2026).

### Estructura de carpetas

```
~/Claude/Discovery/
├── OPPORTUNITIES.md              ← dashboard OST, vista rápida de todo
├── discovery.code-workspace
├── sessions/                     ← sesiones del discovery general
└── Opportunities/
    └── <Nombre>/                 ← una carpeta por oportunidad
        ├── context.md            ← memoria viva (hipótesis, decisiones, artefactos)
        └── sessions/             ← logs de sesión de esa oportunidad

~/Claude/<Nombre>/                ← solo cuando tiene workspace propio
```

### Ciclo de vida de una oportunidad

| Estado | Emoji | Dónde vive |
|--------|-------|-----------|
| Idea nueva | 🔴 | Solo en `OPPORTUNITIES.md` |
| En discovery | 🟡 | `Discovery/Opportunities/<Nombre>/` con `context.md` |
| Validada, avanzando | 🔵 | Workspace propio en `~/Claude/<Nombre>/`; `context.md` se importa |
| Descartada | ⚫ | Documentada en `OPPORTUNITIES.md` |

### Reglas

- Todo el material de una oportunidad vive DENTRO de su carpeta en `Discovery/Opportunities/`
- La memoria global (`~/.claude/memory/`) solo tiene punteros — el detalle vive en `context.md`
- El auto-memory del workspace Discovery vive en `~/.claude/projects/-Users-joaco-Claude-Discovery/memory/` (Claude Code abierto desde `~/Claude/Discovery/`)
- Al graduarse a workspace propio: importar `context.md` como base de contexto

## Interview Preparation
The full interview prep stack:
- **`/interview-prep`** — global skill for PM interview frameworks
- **`/product-sense-interview-answer`** — answer structuring
- **`Job Search/Interviews/behavioral/`** — story bank (part of the 2026-08-25 reorg split: CV/JD tooling lives in `Job Search/CV and JDs/`, interview prep in `Job Search/Interviews/`)
- **Noam Segal's AI Interview Coach** — installed globally at `~/.claude/skills/interview-coach/`. Invoke via `/interview-coach` or open `~/Claude/PM Ops/Job Search/Interviews/interview-coach/` as a Claude Code project and type `kickoff`. Commands: `analyze` (transcript scoring), `stories` (story bank), `mock` (full interview sim), `negotiate` (salary scripts), `decode` (JD fit assessment), `prep [company]` (interview brief), `hype` (pre-interview), `progress` (trend review)
- **K-Dense mimeographs** — 80 personas available; use `steve-jobs`, `demis-hassabis`, or `andrej-karpathy` for adversarial interview pressure-testing

### ⏳ Pendiente: 2 historias candidatas para el banco (agregado 2026-08-23)
`kantox-pm-os/context.md` tiene 2 historias candidatas (H — PM OS para el equipo, I — Discovery de la nueva visión) esperando un resultado real antes de promoverse a `Job Search/Interviews/behavioral/` — no crearlas como STAR hasta entonces (regla `feedback_behavioral_stories`, 2026-08-06). Revisar ese archivo cuando el piloto tenga números.
