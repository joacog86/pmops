# A Guide to the CIRCLES Framework — Product School / Lewis Lin

**Type:** Article / Interview Framework + PM Design Framework
**Source:** https://productschool.com/blog/skills/circles-framework-guide
**Author:** Carlos Gonzalez de Villaumbrosia (CEO, Product School) | **Publication:** [[entities/product-school]]
**Framework Creator:** Lewis Lin (*Decode and Conquer*)
**Date:** April 4, 2024 (updated Oct 9, 2024) | **Ingested:** 2026-04-25

## TL;DR

CIRCLES is a structured, end-to-end framework for product design and product sense interviews. Created by Lewis Lin, it walks a PM through the full arc of product thinking — from clarifying the problem to recommending a solution — in a way that's complete, defensible, and easy for interviewers to follow.

## The 7 Steps

| Letter | Step | What it means |
|---|---|---|
| **C** | Comprehend the Situation | Clarify the goal, constraints, and context. What is the product, for whom, and why? |
| **I** | Identify the Customer | Define the target user segment. Characteristics, behaviors, pain points. |
| **R** | Report Customer Needs | List the specific needs and desires of the target segment. Ground in use cases per persona. |
| **C** | Cut (via Prioritization) | Narrow down needs to the most critical. Use a method like RICE, ICE, or impact/effort. |
| **L** | List Solutions | Brainstorm at least 10 ideas. Volume first, then filter. More ideas = better odds of a great one. |
| **E** | Evaluate Trade-offs | Assess pros/cons of each solution. Weigh cost, complexity, UX impact, strategic alignment. |
| **S** | Summarize Recommendations | Synthesize into a clear, justified recommendation aligned to user needs + business goals. |

## Real-World Examples Used in the Article

- **C (Comprehend):** Google Assistant — understood context (smart assistants rising, Siri/Alexa competition) before building.
- **I (Identify):** Netflix — sophisticated audience segmentation by viewing habits, demographics, preferences → personalized recommendations.
- **R (Report):** Spotify — identified need for *discovery*, not just playback → Discover Weekly, Daily Mix.
- **C (Cut):** Intercom — used RICE to prioritize AI Chatbot feature (high Reach + Impact + Confidence, manageable Effort).
- **L (List):** Amazon Alexa — extensive solution list required to build the ecosystem for smart home integration.
- **E (Evaluate):** Facebook News Feed algorithm — chose to prioritize friends/family content over business content; accepted the trade-off of reduced organic reach.
- **S (Summarize):** Microsoft Windows 10 — security enhancements + UX improvements + new features, justified by user feedback.

## Full Worked Example: AI-Powered Chatbot for E-Commerce

1. **Comprehend:** Goal = reduce support costs + increase satisfaction. Metric = escalation rate. Constraints = LLM integration requirements.
2. **Identify:** E-commerce platforms and boutique shops as customers (not end-users — double layer).
3. **Report:** 24/7 availability, fast query resolution, shopping assistance.
4. **Cut:** Prioritize speed, ease of integration, and scalability. Defer personalized recommendations and delivery tracking to backlog.
5. **List:** NLP for natural language queries, e-commerce platform integrations, RAG system with product inventory.
6. **Evaluate:** Advanced AI = higher cost + complexity. Trade-off: defer advanced personalization to keep V1 lean.
7. **Summarize:** Build scalable, fast, easy-to-integrate chatbot with personalization as V2.

## How CIRCLES Relates to Other Frameworks

- **vs. Ben Erez 5-step (Product Sense):** Erez goes deeper on segmentation and problem identification — CIRCLES is more linear and surface-level on those steps. CIRCLES is better as a structure *skeleton*; Erez gives the muscle on the "I" and "R" steps.
- **vs. RICE (prioritization):** CIRCLES uses RICE inside its "Cut" step — they're complementary.
- **vs. JTBD:** CIRCLES' "Report Customer Needs" step maps roughly to JTBD's functional + emotional jobs — but CIRCLES doesn't go as deep.

## What This Means for Joaco

CIRCLES is useful in two contexts:
1. **Interview scaffold:** Gives a complete, memorable structure to avoid missing a step in product design questions. Pair with Ben Erez for deeper execution on the user/problem steps.
2. **PM daily work:** The E and S steps (trade-off evaluation + summarize recommendation) are often where junior PMs are weakest — using CIRCLES consciously builds that habit.

Watch out: the framework can produce shallow answers if rushed. The "L" step (List Solutions — aim for 10 ideas) is often skipped. Don't skip it.

## Tensions / Things to Interrogate

- CIRCLES is prescriptive and linear — real product problems are messier. Use it as a checklist, not a script.
- The "Cut" step leaves the prioritization method unspecified — you need to bring your own method (RICE, MoSCoW, opportunity scoring). CIRCLES alone doesn't tell you *how* to prioritize.
- Lewis Lin created this for the interview context — in real product work, steps often loop back (you might re-define the customer after listing solutions). Treat it as iterative, not sequential.

## Related Pages

- [[concepts/circles-framework]]
- [[concepts/product-sense-interview-framework]]
- [[concepts/pm-interview-frameworks]]
- [[entities/product-school]]
- [[entities/lewis-lin]]
