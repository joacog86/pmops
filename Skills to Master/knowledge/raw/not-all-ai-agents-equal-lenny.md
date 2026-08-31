# Not All AI Agents Are Created Equal: A Framework for Categorizing Agent Initiatives

**Source:** https://www.lennysnewsletter.com/p/not-all-ai-agents-are-created-equal  
**Authors:** Hamza Farooq and Jaya Rajwani  
**Publication:** Lenny's Newsletter  
**Date ingested:** 2026-04-25

## The Core Problem

Organizations maintain backlogs of 5-10 "agent" ideas without a systematic way to compare them. Traditional prioritization matrices fail because these agents have drastically different architectures, timelines, resource requirements, and operational costs. "One 'agent' might take six weeks to build. Another might take six months."

## The Three Agent Categories

### Category 1: Deterministic Automation
- You define the entire workflow; AI handles content at specific steps
- Execution paths finite and predictable (<15-20 branches)
- Task completion: seconds to minutes
- Tools: n8n, Zapier, Make.com, OpenAI AgentKit, Lindy, Gumloop
- Timeline: 2-6 weeks | Team: 1-2 | Cost: $500-2K/month
- 60-70% of agent opportunities

### Category 2: ReAct Agents (Reasoning and Acting)
- You define available tools; LLM autonomously decides what to do next via observe-reason-act loop
- Same request can trigger different action sequences
- 5-15+ distinct capabilities, context determines the right one
- Tools: LangGraph, CrewAI, AutoGen
- Timeline: 6-12 weeks | Team: 2-4 | Cost: $5K-15K/month
- 25-30% of agent opportunities

### Category 3: Multi-Agent Networks
- Multiple specialized agents coordinate with each other, owned by different teams
- Enterprise-scale, long-running, complex orchestration
- Tools: Google ADK, AutoGen, custom enterprise platforms
- Timeline: 3-6 months+ | Team: 5+ | Cost: $50K+/month
- 5-10% of agent opportunities

## Triage Process (5 minutes)
1. Map the problem as a flowchart
2. Count decision branches
3. Determine if LLM or humans define the path
4. Assess whether context dynamically changes actions
5. Check if agent-to-agent coordination is necessary

## Real-Life Case Study
Email support automation:
- Week 1: 52% completion rate
- Week 4: 78%
- Week 8: 87% (production-ready)
- Result: 3,000 emails/month automated, 2.5 FTE hours/day freed, $18K/month savings

## Key Warnings
- Don't build Cat 2 for Cat 1 problems (overengineering)
- Don't attempt Cat 2 solutions with Cat 1 tools (underengineering)
- Start with Cat 1 for quick wins and organizational confidence
