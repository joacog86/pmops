---
name: interview-prep
description: PM interview preparation workflow. Combines real PM work with mock interview simulation so you practice by doing, not by memorizing. Covers Product Sense, Execution/Metrics, Strategy, and Behavioral interview types for Google, Meta, and Anthropic.
triggers:
  - "prep interview"
  - "interview prep"
  - "practice interview"
  - "mock interview"
  - "prepare for interview"
  - "/interview-prep"
argument-hint: "<type: product-sense|execution|strategy|behavioral> <product or topic>"
---

# Interview Prep Skill

## Philosophy
You don't get confident by studying answers. You get confident by having done the work.
This skill makes you do real PM work first — then teaches you how to articulate it in an interview.

After 3-4 sessions per type, you'll have a bank of real stories to draw from in any interview.

## How to invoke
```
/interview-prep product-sense "Improve Google Maps"
/interview-prep execution "DAU dropped 15% on Instagram"
/interview-prep strategy "Should Spotify enter audiobooks?"
/interview-prep behavioral "Influence without authority"
```

---

## PHASE 1: WORK PHASE
*"Do the actual PM work first."*

### Product Sense chain
Run these skills in sequence for the given product:
1. **`user-personas`** — Who are the real users? Build 2-3 distinct personas with JTBD
2. **`jobs-to-be-done`** — What jobs is this product hired to do? Unmet jobs?
3. **`opportunity-solution-tree`** — Map outcome → opportunities → solutions → experiments
4. **`metrics-dashboard`** — Define North Star + input metrics + guardrails for this product
5. **`product-sense-interview-answer`** — Structure the full 8-10 min interview response

**Output:** A real product analysis artifact, not a rehearsed answer.

### Execution / Metrics chain
Run these skills for the given metric/scenario:
1. **`north-star-metric`** — Define what success looks like for this product
2. **`metrics-dashboard`** — Full metrics tree with leading/lagging indicators
3. **`ab-test-analysis`** — Design the investigation: what tests would you run?
4. **`cohort-analysis`** — Segment the problem: which users, which behaviors, which time windows?

**Output:** A structured metrics investigation with hypotheses and action plan.

### Strategy chain
Run these skills for the given strategic question:
1. **`product-strategy`** — What's the strategic context, goal, and constraints?
2. **`swot-analysis`** — Map strengths, weaknesses, opportunities, threats
3. **`positioning-workshop`** — Who is this for? Against whom? Why us?
4. **`recommendation-canvas`** — Build a structured recommendation with tradeoffs

**Output:** A strategy brief with a clear recommendation and supporting analysis.

### Behavioral chain
Run these skills to build a real story (not make one up):
1. **`discovery-process`** — What was the problem? How did you find it?
2. **`stakeholder-map`** — Who was involved? What were the tensions?
3. **`pre-mortem`** — What could have gone wrong? What did you do about it?
4. **`recommendation-canvas`** — What was your recommendation and why?

**Output:** Raw material for a STAR story grounded in real PM thinking.

---

## PHASE 2: SYNTHESIS
*"Translate the work into interview language."*

After completing Phase 1, convert the artifacts into an interview-ready narrative.

### Product Sense narrative structure (8-10 min response)
```
1. Clarifying questions (1 min) — scope, user, metric for success
2. User segmentation (1-2 min) — who are we building for and why
3. Pain points / opportunities (2 min) — JTBD framing, ranked by impact
4. Solutions (2 min) — 3 ideas, evaluate tradeoffs
5. Recommendation (1 min) — one clear pick with rationale
6. Success metrics (1 min) — how you'd know it worked
```

### Execution narrative structure
```
1. Clarify the metric and timeframe
2. Rule out external factors (seasonality, tracking issues)
3. Segment by user type, platform, geography, feature
4. State top 3 hypotheses ranked by likelihood
5. Define investigation plan: what data, what tests
6. State what you'd do while investigating
```

### Strategy narrative structure
```
1. Restate the strategic question + your interpretation
2. Frame the decision criteria (what matters most here)
3. Analyze the options (2-3) with tradeoffs
4. Make a clear recommendation
5. State what you'd need to be wrong
```

### Behavioral narrative — STAR+ format
```
Situation: Context, stakes, why it was hard
Task: What you were responsible for
Action: What YOU specifically did (not "we")
Result: Measurable outcome
Learning: What you'd do differently
```

---

## PHASE 3: MOCK INTERVIEW
*"Now defend it under pressure."*

After synthesis, Claude acts as an interviewer from the target company.

### How to activate mock mode
Say: "Run the mock. Target: [Google / Meta / Anthropic]"

### Interviewer personas

**Google interviewer**
- Style: Structured, methodical, keeps pushing for specificity
- Will ask: "How would you prioritize between these?" / "What metric would you use?"
- Evaluates: DIGS framework adherence, user empathy, structured thinking, tradeoffs

**Meta interviewer**
- Style: Direct, growth-obsessed, challenges assumptions fast
- Will ask: "What's the biggest lever for growth here?" / "How does this scale?"
- Evaluates: Impact at scale, data instinct, speed of reasoning, execution clarity

**Anthropic interviewer**
- Style: Curious, first-principles, technically engaged
- Will ask: "Why does this actually matter?" / "What would an AI-native version look like?"
- Evaluates: AI product intuition, values alignment, depth of reasoning, mission fit

### Mock interview flow
1. Interviewer asks the opening question
2. You respond (full answer)
3. Interviewer asks 2-3 follow-up probes
4. You respond to each
5. Interviewer closes: "Any questions for me?"
6. **Scorecard delivered** (see below)

### Scorecard dimensions
| Dimension | What good looks like |
|---|---|
| Structure | Clear framework, logical flow, no rambling |
| User empathy | Named real users, their actual pain, not assumed |
| Data-driven | Quantified where possible, metrics defined upfront |
| Tradeoffs | Acknowledged what you're NOT doing and why |
| Communication | Confident, concise, no filler, executive-ready |
| Recommendation | One clear answer, not "it depends" |

Score each 1-5. Flag the top 1 thing to improve.

---

## PHASE 4: STORY BANK SAVE
*"Lock in what you learned."*

After the mock, save the session to the story bank:

**Path:** `interview-bank/<type>/<date>-<product>.md`

Use the template at `interview-bank/template-story.md`.

Tag with:
- Type: product-sense / execution / strategy / behavioral
- Company target: google / meta / anthropic / all
- Product/topic
- Score achieved
- Key improvement identified

---

## Rules
- Never skip Phase 1. The work comes before the practice.
- Never let the user just ask for a mock without doing the work first. The whole point is earned confidence.
- In mock mode, stay in character as the interviewer. Don't break to explain what you're doing.
- In the scorecard, be honest. Vague praise is useless.
- One session = one type + one product/scenario. Don't try to cover multiple in one session.

## Anti-patterns to call out
- Answers that start with "So basically..." — too casual
- Answers with no user specificity — "users want X" without naming who
- Recommendations that hedge: "it depends on the context" — make a call
- Not acknowledging tradeoffs — sounds naive
- Listing features without prioritization rationale
