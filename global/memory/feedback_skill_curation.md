---
name: Skill curation approach
description: How Joaco wants to handle duplicate/overlapping skills across the 350+ installed — trial and error, then merge best versions
type: feedback
originSessionId: 6cbd86f8-02e1-4f86-8fa0-fb51febaf87f
---
Always announce which skill you're using and from which repo before activating it. Example: "Voy a usar `prd-development` de deanpeters porque tiene mejor template structure que `create-prd` de phuryn."

**Why:** There are 350+ skills from multiple repos with significant overlap. Joaco wants to learn what works through real use, not upfront analysis.

**How to apply:**
- In every session, explicitly name the skill and repo when activating one
- After using it, briefly note if it was the right call or if another version would've been better
- When a skill is missing something from its equivalent in another repo, propose merging them into a custom version
- Custom merged skills go in project `.claude/skills/` (project-specific) or `PM Ops/.claude/skills/` (universal)
- Don't do mass audits upfront — curate organically through real project use
