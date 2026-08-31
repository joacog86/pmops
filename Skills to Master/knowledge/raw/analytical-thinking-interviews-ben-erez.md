# The Definitive Guide to Mastering Analytical Thinking Interviews

**Source:** https://www.lennysnewsletter.com/p/the-definitive-guide-to-mastering-f81
**Author:** Ben Erez (Guest post on Lenny's Newsletter)
**Publication:** Lenny's Newsletter
**Date:** July 1, 2025 | **Ingested:** 2026-04-25
**Coverage:** Full except final Goal-Setting section (paywall)

## Overview

Companion to Ben Erez's Product Sense guide. Analytical Thinking (AT) interviews assess ability to understand a product in its market context, define success metrics, identify team goals, and evaluate tradeoffs. Common question formats: "How would you measure success for Spotify?", "Set a goal for Instagram Reels", "What's the North Star metric for DoorDash?"

Total working time in a 45-min AT interview: ~35 minutes (after intros and wrap-up).

## Four-Step Framework

### Step 1: Assumptions & Game Plan (opening minutes — make or break)
- State 2-4 assumptions to narrow scope without prematurely limiting solution space
- Then outline your game plan explicitly and ask "Does that sound like a good plan for our time together?"
- This signals structure and lets the interviewer redirect if needed

Assumption flavors (Spotify example):
- Focus on core music streaming service, not niche features
- Consumer-facing experience, not artist/label tools
- Global metrics, not region-specific
- All platforms (mobile, desktop)

Game plan template: "I want to start by reviewing the product's landscape and reason for existing, then identify key stakeholders and ecosystem health metrics, define a North Star metric with guardrails, and finally set specific team goals. Does that sound good?"

### Step 2: Product Rationale (~2 min to organize, then present)

Three components:
1. **Product context:** Describe product, maturity level, business model. Core problem solved. How it creates and captures value.
2. **Market positioning:** Competitive landscape, unique advantages, relevant trends.
3. **Company & product alignment:** Concise mission statement. Throughline from company mission to product mission.

**Spotify example:**
- Core problem: Music piracy + limited legal access → Spotify created legal, affordable access at scale
- Stage: Late growth/early maturity
- Competitive: vs Apple Music, Amazon Music, YouTube Music — Spotify differentiates via superior recommendations, social features, broader platform support, audio-only focus
- Mission: "Unlock the potential of human creativity by giving artists the opportunity to live off their art and fans the ability to enjoy and be inspired by it."

### Step 3: Metric Framework (~2 min to organize, most time in interview)

Three layers:

**Ecosystem value:** List key players first. For each: value proposition ("What's in it for me?") + specific actions they must take to realize it. Leave out nice-to-have actions.

**Metric definition:** Track key actions with metrics a data scientist could implement including time frames. Define a North Star metric (NSM) that reflects value creation across players and can grow indefinitely. Always include a time frame (e.g. "weekly").

**Critique NSM:** Identify 1-2 ways NSM growth could unintentionally damage ecosystem health. Define guardrail metrics for each.

**Spotify example:**
- Players: listeners, creators (artists), advertisers, Spotify itself
- Track DWM (daily, weekly, monthly) for ecosystem metrics first
- NSM: "Total streaming hours per week" — measures volume of the unifying action benefiting all players
- Guardrail: prevents optimizing toward passive listening at the expense of active discovery/engagement

**Common mistakes:**
- Averages or ratios as NSMs — they can show false positives while the product is actually shrinking
- Metrics not specific enough for a data scientist to implement ("user engagement" fails; "daily active users who complete at least one core action within their first 7-day cohort" passes)
- Too many metrics per player (focus on 3-5 primary ones)

### Step 4: Goal-Setting (paywalled)

"Altitude shift" from product/company-level metrics to team-level goals. Shows ability to bridge strategy and execution. (Full content behind paywall.)

## Additional Examples

**Instagram Reels:**
- Rationale: Short-form video shift, competitive response to TikTok/YouTube Shorts, connects to Meta's mission of human connection
- NSM: "Total Reels watch time per week"
- Guardrail: Content quality + broad user adoption (don't optimize watch time at expense of either)

**DoorDash:**
- Rationale: Marketplace — value for customers (convenience), restaurants (expanded reach), dashers (flexible earnings)
- NSM: "Total completed deliveries per week"
- Guardrails: Order satisfaction (quality), retention rates (sustainability), profit margins (avoid unprofitable growth)

## How to Practice

**Product rationale:** Write rationale for 3 favorite products. Walk a friend through in ~2 min. Ask them to recall: why the product exists, who it's for, how it makes money, what differentiates it.

**Metrics framework:** For same products: map ecosystem players → value proposition + actions → metrics with time frames → NSM → guardrails. Walk a friend through. Check: can they explain your measurement logic and see the connection between value and metrics?
