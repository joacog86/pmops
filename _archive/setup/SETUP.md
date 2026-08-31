# PM Operating System — Setup Guide

## What This Is
A Claude Code configuration that turns Claude into a senior PM collaborator. Instead of writing prompts from scratch every time, you get 7 pre-built skills, a context library Claude reads automatically, and templates for the most common PM artifacts.

---

## Folder Structure

```
pm-operating-system/
├── CLAUDE.md                    ← Claude reads this first (always)
├── setup/
│   └── SETUP.md                 ← You are here
├── .claude/
│   └── skills/
│       ├── prd-draft.md         → /prd-draft
│       ├── interview-process.md → /interview-process
│       ├── meeting-cleanup.md   → /meeting-cleanup
│       ├── prioritize.md        → /prioritize
│       ├── one-pager.md         → /one-pager
│       ├── review.md            → /review [persona]
│       ├── sprint-plan.md       → /sprint-plan
│       └── announce.md          → /announce
├── context-library/
│   ├── company.md               ← Fill this in first
│   └── writing-style.md         ← Fill this in second
└── templates/
    ├── roadmap.md
    ├── launch-checklist.md
    └── retro.md
```

---

## First Session Checklist (do this once)

### Step 1 — Fill in your context files
These two files are the most important. Claude reads them before every task.

1. Open `context-library/company.md` and fill in everything you can
2. Open `context-library/writing-style.md` and fill in your style preferences

The more you put in here, the less Claude will ask you to repeat yourself.

### Step 2 — Test a skill
Run your first command to verify everything is working:

```
/meeting-cleanup
```

Paste any meeting notes you have lying around. You should get a clean, structured summary in seconds.

### Step 3 — Run a review
Try the sub-agent review on a doc you wrote recently:

```
/review exec
```

Paste the doc and see what the exec persona catches.

---

## How to Use Skills

Every skill is invoked with a `/` command. You can either:
- Type the command and Claude will ask for what it needs
- Type the command and paste the relevant content immediately

**Example:**
```
/prd-draft

Feature: bulk CSV import for user data
Problem: admins have to add users one by one; at 200+ users this takes hours
Timeline: Q2
```

---

## How to Use Sub-Agent Reviews

The `/review` skill takes any persona:
```
/review engineer
/review exec
/review sales
/review designer
/review customer-success
/review legal
/review data
```

**Pro tip:** Run `/review engineer` + `/review exec` on every PRD before sending it. Catches most issues in 2 minutes.

---

## Maintaining Your OS

- **Update `company.md` every quarter** with new OKRs and strategic focus
- **Add to `writing-style.md`** when you find examples of writing you like or dislike
- **Extend the skills** — copy any skill file, rename it, and adapt the template for recurring tasks in your context

---

## Quick Reference Card

| I want to... | Command |
|---|---|
| Write a PRD | `/prd-draft` |
| Process user interview notes | `/interview-process` |
| Clean up meeting notes | `/meeting-cleanup` |
| Prioritize a list of features | `/prioritize` |
| Write an executive one-pager | `/one-pager` |
| Get feedback from engineering | `/review engineer` |
| Get feedback from exec perspective | `/review exec` |
| Plan the next sprint | `/sprint-plan` |
| Write a launch announcement | `/announce` |
