# AI Agents for PMs

**Type:** Concept / Emerging practice

## Definition

The use of autonomous AI agents — software that executes tasks independently, often overnight or on a schedule — to extend a PM's output beyond what's possible in a working day. Distinct from AI assistants (which respond to prompts) in that agents take initiative, run cron jobs, and chain multi-step actions without human intervention per step.

## Why it matters for PMs

PMs are high-leverage roles bottlenecked by time, not intelligence. Agents break the time bottleneck by running in parallel with the PM — doing research, drafting docs, triaging signals, prepping meetings, and managing communication while the PM sleeps or focuses on higher-order work.

## What PMs are delegating to agents (from sources)

- **Meeting briefs** — auto-generated 30 min before meetings with attendee history and context
- **Sales prospecting** — signup analysis, enterprise lead identification, outreach drafts
- **Documentation** — support question → doc conversion, Linear/Jira issue creation
- **Weekly reports** — progress summaries, task breakdowns
- **Research** — competitive monitoring, article synthesis, signal triage

## The multi-agent insight

From [[sources/openclaw-lenny-claire-vo]]: the biggest unlock is specialization. One generalist agent is limited. Multiple specialized agents (one for sales, one for docs, one for research) outperform. This mirrors how PMs manage human teams — right person for the right job.

## What this requires from PMs

- Writing clear instructions (AGENTS.md, CLAUDE.md, system prompts) — this is a new PM skill
- Knowing what to delegate vs. what requires judgment
- Designing for failure: agents make mistakes, sometimes catastrophically — blast radius management is critical
- Reviewing agent output as you would a junior team member's work

## Current state (2026)

- Technically accessible but still high-friction for most PMs
- Leading practitioners (Claire Vo, etc.) already running 9+ agent stacks
- Tooling maturing fast: OpenClaw, Claude Code, Cursor agents, etc.
- Security and reliability remain real concerns — not production-safe without guardrails

## El copilot como punto de entrada (Tal Raviv, 2025)

Antes de orquestar agentes especializados, hay un modo de uso más accesible y con ROI inmediato: el **AI copilot**. Un LLM con contexto persistente sobre tu rol, empresa e iniciativas activas que actúa como un colega de largo plazo en lugar de un oráculo sin memoria.

La diferencia con un chat genérico es el onboarding: strategy decks, org chart, retros, performance reviews subidos como project knowledge. Con ese contexto, prompts conversacionales simples ("what's the most important thing I should do next?") producen outputs cualitativamente distintos.

El hábito clave es el "gossip": actualizar el copilot de forma natural cuando algo cambia, como si le contaras a un colega sentado al lado. Esto mantiene el contexto fresco sin overhead de mantenimiento formal.

Para PMs que ya usan Claude Code o Cursor para trabajo diario, esto ya es el sistema. El artículo valida que el siguiente paso no es necesariamente orquestar más agentes — sino onboardear mejor el contexto existente.

Ver [[sources/build-personal-ai-copilot-tal-raviv-lenny]] para el framework completo (Hire → Onboard → Kick off → Work).

## Open questions

- Does this create PM leverage or PM homogenization? If everyone has the same agents, does the edge disappear?
- How do you evaluate agent quality over time — what's the PM equivalent of a performance review for an AI agent?
- Where does "good enough" agent output start to replace "excellent" human PM output?

## Related pages

- [[sources/openclaw-lenny-claire-vo]]
- [[sources/not-all-ai-agents-equal-lenny]]
- [[sources/build-personal-ai-copilot-tal-raviv-lenny]]
- [[concepts/ai-agent-taxonomy]]
- [[entities/claire-vo]]
- [[entities/tal-raviv]]
