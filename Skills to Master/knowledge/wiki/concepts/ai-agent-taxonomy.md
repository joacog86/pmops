# AI Agent Taxonomy

**Type:** Concept / Framework

## The 3-category model (Farooq & Rajwani)

| Category | Definition | When to use | Signs you're in the wrong category |
|---|---|---|---|
| **Cat 1: Deterministic** | Fixed workflow, AI fills content slots | Repeatable process, predictable branches (<20) | Flowchart has 30+ nodes and keeps growing |
| **Cat 2: ReAct** | LLM decides what to do next from a toolset | Ambiguous user intent, 5-15+ capabilities, context matters | Single agent covers too many domains, performance degrades |
| **Cat 3: Multi-Agent** | Specialized agents coordinate with each other | Enterprise-scale, long-running tasks, multiple team ownership | Cat 2 agent tries to do everything |

## Why this matters for PM prioritization

Before any impact/effort matrix, categorize. Category determines:
- **Realistic timeline** (2 weeks vs. 6 months)
- **Team composition** (1 PM vs. 5+ engineers)
- **Monthly operating cost** ($500 vs. $50K)
- **ROI horizon** (weeks vs. quarters)

## The 5-minute triage

1. Draw the problem as a flowchart
2. Count decision branches — under 20? → Cat 1
3. Does the LLM or a human define the execution path? Human → Cat 1, LLM → Cat 2+
4. Does context dynamically change which actions fire? Yes → Cat 2+
5. Do multiple agents need to coordinate? Yes → Cat 3

## Common failure modes

- **Overengineering:** Building Cat 2 (ReAct) for a Cat 1 problem — adds complexity, cost, and latency for no gain
- **Underengineering:** Applying Cat 1 tools (n8n, Zapier) to Cat 2 problems — brittle, breaks on edge cases
- **Mislabeling Cat 3 as Cat 2:** Organizational coordination problems disguised as technical ones

## Distribution in practice

Per [[sources/not-all-ai-agents-equal-lenny]]: 60-70% of real org opportunities are Cat 1. Most backlogs are dominated by Cat 1 disguised as Cat 2.

## Related pages

- [[sources/not-all-ai-agents-equal-lenny]]
- [[concepts/ai-agents-for-pms]]
- [[sources/openclaw-lenny-claire-vo]]
