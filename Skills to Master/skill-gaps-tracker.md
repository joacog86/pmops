# Skills to Master

Long-term development plan, built from real gaps surfaced by actual JDs Joaco has been decoded against — not a guess at what to learn. Each entry names the source JD, what's missing, and whether it's realistically closeable with focused study or a genuine multi-year structural gap (a different track, not a weekend fix). See `[[project_job_search_target_archetypes]]` and `Job Search/CV and JDs/job-pipeline.md` for the archetypes/verdicts these gaps came from.

## How to read this
- **Closeable with study** — real gap, but a few hours/days of focused learning meaningfully closes it before an interview. Worth doing proactively for any Strong Fit / Investable Stretch lead.
- **Structural / long-term** — years of hands-on experience, not something a study session fixes. These define whether a Technical Specialist lead is worth investing prep time in at all (see the Role Family / Proximity system in `job-pipeline.md`).

## Closeable with study

| Gap | First surfaced | Why it matters | Notes |
|---|---|---|---|
| EU AI Act & GDPR fundamentals, applied to AI in banking | N26 — Senior PM OAE (2026-08-06) | JD explicitly names GDPR/EU AI Act compliance as core scope | Real, unaddressed gap per the original skill-gap-map. No shortcut via past experience (BCRA ≠ EU AI Act) but genuinely study-able before an interview. |
| PSD2 / MiCA regulatory frameworks (EU-specific KYC/AML) | Spendesk — Senior PM KYC & AML (2026-08-25) | JD wants "working knowledge of KYC/AML regulatory frameworks — ideally EU or UK" | The *skill* (translating regulation into product decisions) transfers directly from BCRA/IOL — it's the specific EU regulatory body knowledge that's missing, not the underlying competency. |
| Power BI (real depth, not just listed) | Recurring — N26 OAE skill-gap-map (2026-08-06), several JDs since | Listed as a skill on the CV with no bullet evidencing depth | Per `feedback_cv_writing`: don't oversell. Decide consciously — refresh with real practice, or own "known tool, not expert" in conversation. Still undecided as of 2026-08-25. |

## Structural / long-term (different track, not a study session)

| Gap | First surfaced | What it would actually take | Verdict impact |
|---|---|---|---|
| Hands-on no-code workflow-automation tools (n8n, Zapier, Make) | Abacum — AI Adoption & Enablement (2026-08-25) | Building real, shipped automations with these specific platforms, not just AI-native tools generally (Claude Code, Gemini) | Didn't block a Strong Fit verdict — Abacum explicitly welcomes ambiguous backgrounds — but would strengthen the pitch. |
| National payment-scheme participation mechanics (SEPA, FPS, ACH, Direct Debit) | Thunes — PM Global Accounts (2026-08-25) | Multi-year hands-on experience integrating with clearing/settlement schemes directly, not just bank partners | The one gap keeping Thunes at Investable Stretch instead of Strong Fit — closest of today's technical gaps, since Xepelin's bank-rail integrations are a real (if partial) bridge. |
| SAP system composition + hands-on technical building (SQL/PQL/Python/Agents) | Celonis — Application PM, AI System Transformations (2026-08-25) | Years as a technical/forward-deployed builder, not a PM who partners with engineers | Drove a Long-Shot Stretch verdict. Thematically the closest match to the OAE/process-mining archetype, but the technical bar is real. |
| E-invoicing / CTC regulatory certification (Peppol, XRechnung, Factur-X) + network-architecture fluency | Stripe — PM, E-Invoicing (2026-08-25) | Deep, narrow regulatory-technical specialization; comp band suggests the role is scoped above typical PM level regardless | Drove a Long-Shot Stretch verdict — probably the single biggest stretch decoded to date. |
| Platform/data-architecture depth (entity resolution, master data management, distributed systems, graph databases) | Sage — Payments & Business Identity (2026-08-25) | Technical platform-PM background, not product/growth-facing PM background | Drove Long-Shot Stretch on both Sage reqs. Business Identity has real domain overlap (KYC/identity) but the technical ask dominates the fit. |
| Backend / core-banking infrastructure (ledger systems, API architecture) | N26 — Banking Scalability Platform (2026-08-25) | Same pattern as N26's earlier Payments Platform (Backend) req — recurring signal that N26's platform-infra track is a different PM archetype than Joaco's | Consistently drives Long-Shot Stretch across every N26 infra-team req found to date. |

## Active study plan — N26 OAE (2026-08-30)

Joaco read the actual N26 OAE posting (n26.com/en-eu/careers/positions/7996996) and it landed as a real stretch, not paranoia — the core gap named in the 2026-08-06 skill-gap-map (`Opportunities/N26 - Ops Automation Enablement/skill-gap-map.md`) is real: never deployed an agentic system for others to use, with operational-impact metrics. **That specific gap isn't closeable by study alone — it needs the Kantox PM OS actually shipped with real usage.** What study *does* close: the vocabulary and frameworks that make that project sound credible mid-build, not just after. Sourced against Cindy Zhu's free-certs guide (cindyzhu.com.au/guides/5-free-certs-chief-agent-officer.html).

| Priority | Resource | Cost/Cert | Closes | Notes |
|---|---|---|---|---|
| 1 | Anthropic — Introduction to Model Context Protocol | Free, certificate | Agentic orchestration gap | Build MCP servers/clients in Python — the natural next step to make the Kantox PM OS a real multi-user system instead of personal Claude Code use. Most directly useful of the five. |
| 1 | Hugging Face — AI Agents Course | Free, 2 certificates | Agentic orchestration gap | smolagents, LangGraph, LlamaIndex — vocabulary/frameworks to talk about agent orchestration beyond "I use Claude Code daily." |
| 2 | Anthropic — AI Fluency: Framework and Foundations | Free, certificate | "AI champion" / responsible-AI-leadership angle | The 4D framework (Delegation, Description, Discernment, Diligence) — directly citable in an interview, matches the JD's compliance/governance pillar. |
| 2 | EU AI Act + GDPR fundamentals, applied to AI in banking | — | Named compliance gap | Not covered by the cert guide at all (it's agent-building focused, not regulatory). Still needs direct, separate study — see row above in this table. |
| 3 | Google + Kaggle — 5-Day Gen AI Intensive | Free, certificate/badge | Agent evaluation methodology | Connects to "measure against baseline" from `how-oae-pms-work.md`. Nice-to-have, not critical. |
| skip | Microsoft + LinkedIn — Career Essentials in Gen AI | Free | — | Least technical, least differentiated — Joaco's executive/strategic communication is already strong. Skip unless the LinkedIn-visible credential itself has value. |
| do, not study | Re-read `how-oae-pms-work.md`, apply failure demand analysis explicitly as the PM OS's first real step (map Kantox PM team workflows before building) | — | Formal process-mining vocabulary + generates the missing FTE-equivalent metric ("hours saved per PM/week") firsthand | This is the highest-leverage item on the list — it's not a course, it's doing the actual methodology the JD wants, which a course can't substitute for. |

## What this confirms about direction
The **closeable** gaps all sit inside Joaco's proven lane (regulated fintech/ops generalist PM) — worth fixing opportunistically. The **structural** gaps all cluster in one place: deep technical/platform specialist work (SAP, distributed systems, national payment rails, e-invoicing certification). That's not a competitiveness problem — it's a different career track. See `[[feedback_discovery_transparency]]` for how this shapes where to actually spend prep time (cheap to apply everywhere, real prep only once a Technical Specialist lead responds).

*Last updated: 2026-08-30 — added the N26 OAE active study plan, sourced against Cindy Zhu's free-certs guide.*
