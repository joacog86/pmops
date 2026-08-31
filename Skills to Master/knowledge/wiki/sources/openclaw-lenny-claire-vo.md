# OpenClaw: The Complete Guide — Claire Vo, Lenny's Newsletter

**Type:** Article / Practitioner guide  
**Source:** https://www.lennysnewsletter.com/p/openclaw-the-complete-guide-to-building  
**Author:** [[entities/claire-vo]]  
**Publication:** [[entities/lennys-newsletter]]  
**Date ingested:** 2026-04-25

## TL;DR

Claire Vo (ex-CPO, founder of ChatPRD) documents how she built a personal fleet of 9 AI agents using OpenClaw — an open-source, locally-running agent system controlled via Telegram/WhatsApp. The article is part technical guide, part signal: top PMs and founders are already delegating real work to autonomous agents.

## Key Claims

- AI agents can run overnight autonomously and deliver results by morning — this is already happening at the practitioner level
- The "biggest unlock" is multi-agent orchestration — specialized agents > one generalist agent
- Agents need identity files (SOUL.md, AGENTS.md, IDENTITY.md) to behave consistently — personality design matters
- Security is the biggest risk: agents with file system access can cause catastrophic damage if misconfigured (real examples: deleted Gmail, corrupted calendar)
- Telegram is the recommended interface for non-technical users

## PM-relevant use cases she describes

| Use case | What the agent does |
|---|---|
| Meeting prep | Generates briefs 30 min before, pulls attendee history |
| Sales prospecting | Analyzes signups, identifies enterprise leads, drafts outreach |
| Documentation | Converts support questions → docs, creates Linear issues |
| Project management | Task breakdowns, daily schedules, weekly progress reports |

## What this signals for PMs

This is a leading indicator of where the PM role is going. PMs who build personal agent stacks will compound their output — not by working more, but by delegating async work to agents. The skills: knowing what to delegate, how to write good instructions (AGENTS.md = basically a CLAUDE.md), and how to review/trust agent output.

## Tensions / things to interrogate

- The article is from a technically sophisticated PM — replication difficulty for most PMs is high
- OpenClaw is open-source but the hosted options (StartClaw, MyClaw) add lock-in risk
- "9 agents managing my life" is compelling but also a moving target — maintenance overhead is real and not discussed
- Security risk is mentioned but understated — agents with email + calendar access are high-blast-radius tools

## Related pages

- [[concepts/ai-agents-for-pms]]
- [[entities/claire-vo]]
- [[entities/lennys-newsletter]]
