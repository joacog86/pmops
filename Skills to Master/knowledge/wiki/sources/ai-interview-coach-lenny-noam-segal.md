# How to Use AI for Your Next Job Interview — Noam Segal, Lenny's Newsletter

**Type:** Article / Practitioner research + tool  
**Source:** https://www.lennysnewsletter.com/p/how-to-use-ai-in-your-next-job-interview  
**Author:** Noam Segal | **Publication:** [[entities/lennys-newsletter]]  
**Date:** Feb 2026 | **Ingested:** 2026-04-25

## TL;DR

Research with 30+ tech professionals shows the best interview candidates built AI-powered feedback loops — not just polish. The article ships a free Claude Code interview coach encoding all those techniques. Core insight: interviewing before AI had no feedback loop; AI closes it.

## The three failure modes

1. **Impostor spiral** — no feedback → can't diagnose if it's resume, skills, or luck
2. **Blind grind** — effort with no signal it's pointed correctly
3. **Practice gap** — you can't improve something you do once every few years

## What the best candidates actually did

- Fed interview transcripts to Claude and got line-by-line feedback on what they actually said
- Simulated interviews before the real thing to test which stories landed
- Surfaced gaps a hiring manager would flag by pasting JD + resume together
- Built story banks and ran rapid-retrieval drills under pressure

## The coach command system

| Command | What it does |
|---|---|
| `kickoff` | Setup: role, feedback level, timeline |
| `research [co]` | Culture brief, interview style, fit |
| `prep [co]` | Predicted Qs, story mapping, interviewer intel |
| `analyze` | Transcript scoring: substance/structure/relevance/credibility/differentiation |
| `stories` | Story bank + rapid retrieval drills |
| `practice` | 8 drill types including pushback, panel, stress |
| `mock` | Full 4-6 question interview simulation |
| `hype` | 60-sec highlight reel + concern sheet |
| `negotiate` | Salary scripts with exact fallback language |
| `debrief` | Post-rejection structured learning |

## Key differentiation insight

**Don't sound like everyone who prepped with AI.** Ask "Where would an interviewer lose confidence in me?" not "How did I do?" Lead with earned secrets (counterintuitive lessons from direct experience) and spiky POVs (specific, surprising, defensible stances) instead of safe, generic answers.

## What this means for Joaco

This tool is directly installable and immediately useful. The interview bank in `PM Ops/interview-bank/` is empty — this coach + the story bank commands would populate it systematically. The transcript analysis feature is particularly powerful: paste any mock interview or real interview notes and get scored feedback.

The "spiky POV" framing is interview gold — interviewers at Google/Meta/Anthropic are pattern-matching on whether you think independently, not just whether you know the frameworks.

## Tensions / things to interrogate

- Coach is behavioral-heavy; PM interviews also include product sense and analytical — need to supplement (the article itself points to Ben Erez's PM interview resources)
- "Sounds like everyone who prepped with AI" is a real risk — the coach addresses it but execution still depends on the candidate having genuine earned secrets
- Recording consent varies by state/country — relevant for LATAM context

## Related pages

- [[concepts/pm-career-market-2026]]
- [[concepts/ai-agents-for-pms]]
- [[entities/lennys-newsletter]]
