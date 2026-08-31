# Not All AI Agents Are Created Equal — Farooq & Rajwani, Lenny's Newsletter

**Type:** Article / Framework  
**Source:** https://www.lennysnewsletter.com/p/not-all-ai-agents-are-created-equal  
**Authors:** Hamza Farooq, Jaya Rajwani  
**Publication:** [[entities/lennys-newsletter]]  
**Date ingested:** 2026-04-25

## TL;DR

A taxonomy of 3 agent types that solves a real organizational problem: "agent" is an umbrella term covering architecturally different systems with wildly different costs, timelines, and complexity. Most orgs fail at agent prioritization because they don't categorize first. 60-70% of real opportunities are Category 1 — simple deterministic automation — but get over-engineered into Category 2.

## The Three Categories

| Category | How it works | Timeline | Cost/month | % of opportunities |
|---|---|---|---|---|
| Cat 1: Deterministic | You define the flow; AI fills content slots | 2-6 weeks | $500-2K | 60-70% |
| Cat 2: ReAct | You define tools; LLM decides what to do next | 6-12 weeks | $5K-15K | 25-30% |
| Cat 3: Multi-Agent | Specialized agents coordinate with each other | 3-6 months+ | $50K+ | 5-10% |

## Key Claims

- Most "agent" backlogs fail because they skip categorical hierarchy before impact/effort scoring
- The right question is not "what's the impact?" but "what category is this?" — that determines realistic timelines and resourcing
- 5-minute triage: map as flowchart → count branches → LLM or human defines path? → does context change actions? → agent-to-agent coordination needed?
- Overengineering (Cat 2 for Cat 1 problems) is as dangerous as underengineering (Cat 1 tools for Cat 2 problems)
- Cat 1 produces measurable ROI fast — use it to build org confidence before attempting Cat 2+

## Real-world benchmarks

Email support automation (Cat 1):
- 8 weeks to 87% completion rate
- 3,000 emails/month automated
- 2.5 FTE hours/day freed
- $18K/month savings

## Tension with OpenClaw article

[[sources/openclaw-lenny-claire-vo]] describes Claire Vo operating at Cat 2-3 (ReAct agents, multi-agent orchestration). This article implies that's a 5-10% use case requiring 5+ people and $50K+/month. The gap: Claire Vo is a technically sophisticated PM building for herself — not a team prioritizing an org-wide initiative. Both are right in their context.

## What this means for PMs prioritizing agent work

- When someone on your team pitches an "agent," ask which category before doing any other analysis
- Most quick wins are Cat 1 — flowcharts, n8n, Zapier — not the sexy stuff
- Cat 2 requires engineers; don't scope it as a PM solo project
- Cat 3 is organizational infrastructure, not a product feature

## Tensions / things to interrogate

- The cost estimates ($500-2K for Cat 1, $50K+ for Cat 3) may reflect US enterprise pricing — LATAM/smaller company context could be very different
- "Category" boundaries are fuzzy in practice — many real systems blend Cat 1 and Cat 2
- No discussion of maintenance costs over time — the ongoing cost of keeping agents calibrated is often larger than build cost

## Related pages

- [[concepts/ai-agents-for-pms]]
- [[concepts/ai-agent-taxonomy]]
- [[sources/openclaw-lenny-claire-vo]]
- [[entities/lennys-newsletter]]
