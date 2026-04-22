#!/bin/bash
# PM Ops Setup Script
# Run this on any new machine to set up your Claude PM environment

set -e

echo "🚀 Setting up PM Ops environment..."

# ── 1. Global Claude config ──────────────────────────────────────────
echo ""
echo "📝 Installing global Claude config..."

mkdir -p ~/.claude/commands

cp global/CLAUDE.md ~/.claude/CLAUDE.md
cp global/commands/*.md ~/.claude/commands/

echo "   ✓ ~/.claude/CLAUDE.md"
echo "   ✓ ~/.claude/commands/"

# ── 2. Skills — phuryn/pm-skills ────────────────────────────────────
echo ""
echo "📦 Installing phuryn/pm-skills..."

git clone --depth=1 https://github.com/phuryn/pm-skills.git /tmp/pm-skills-setup
find /tmp/pm-skills -path "*/skills/*" -type d 2>/dev/null | while read dir; do
  name=$(basename "$dir")
  [ -d ~/.claude/skills/$name ] || cp -r "$dir" ~/.claude/skills/
done
rm -rf /tmp/pm-skills-setup
echo "   ✓ done"

# ── 3. Skills — alirezarezvani/claude-skills ─────────────────────────
echo ""
echo "📦 Installing alirezarezvani/claude-skills..."

git clone --depth=1 https://github.com/alirezarezvani/claude-skills.git /tmp/alirezarezvani-setup
for folder in engineering engineering-team product-team marketing-skill ra-qm-team project-management c-level-advisor business-growth finance; do
  for skilldir in /tmp/alirezarezvani-setup/$folder/*/; do
    name=$(basename "$skilldir")
    [ -d ~/.claude/skills/$name ] || cp -r "$skilldir" ~/.claude/skills/
  done
done
rm -rf /tmp/alirezarezvani-setup
echo "   ✓ done"

# ── 4. Skills — deanpeters/Product-Manager-Skills ────────────────────
echo ""
echo "📦 Installing deanpeters/Product-Manager-Skills..."

git clone --depth=1 https://github.com/deanpeters/Product-Manager-Skills.git /tmp/deanpeters-setup
for skilldir in /tmp/deanpeters-setup/skills/*/; do
  name=$(basename "$skilldir")
  [ -d ~/.claude/skills/$name ] || cp -r "$skilldir" ~/.claude/skills/
done
rm -rf /tmp/deanpeters-setup
echo "   ✓ done"

# ── 5. Skills — marfoerst/claude_okr_pm_kill ─────────────────────────
echo ""
echo "📦 Installing pm-okrs skill..."

git clone --depth=1 https://github.com/marfoerst/claude_okr_pm_kill.git /tmp/okr-setup
[ -d ~/.claude/skills/pm-okrs ] || cp -r /tmp/okr-setup/pm-okrs ~/.claude/skills/
rm -rf /tmp/okr-setup
echo "   ✓ done"

# ── 6. Skills — aakashg/pm-claude-skills ─────────────────────────────
echo ""
echo "📦 Installing aakashg/pm-claude-skills (project-level)..."

git clone --depth=1 https://github.com/aakashg/pm-claude-skills.git /tmp/aakashg-setup
mkdir -p .claude/skills
for skilldir in /tmp/aakashg-setup/skills/*/; do
  name=$(basename "$skilldir")
  [ -d .claude/skills/$name ] || cp -r "$skilldir" .claude/skills/
done
rm -rf /tmp/aakashg-setup
echo "   ✓ done"

# ── 7. Project template ───────────────────────────────────────────────
echo ""
echo "📁 Setting up project template..."

mkdir -p ~/Claude/Projects/_template/context-library
mkdir -p ~/Claude/Projects/_template/work
mkdir -p ~/Claude/Projects/_template/decisions
mkdir -p ~/Claude/Projects/_template/sessions

cat > ~/Claude/Projects/_template/CLAUDE.md << 'EOF'
# Project: [Name]

## What this project is
> One sentence: what product/idea/problem are you working on?

## Goal of this project
> What do you want to have by the end?

## Context
- Load `context-library/product.md` before any task
- Work artifacts go in `work/`
- Key decisions go in `decisions/`

## Status
> What phase are you in? (discovery / strategy / execution / done)
EOF

cat > ~/Claude/Projects/_template/context-library/product.md << 'EOF'
# Product Context

## Product / Idea
> What is it? One paragraph.

## Problem it solves
> What pain does it address? For whom?

## Target users
> Who are the primary users? What do they care about?

## Business context
> Company stage, revenue model, key constraints

## Competitors / alternatives
> What do users do today instead?

## Key unknowns
> What are the biggest questions you still need to answer?
EOF

cat > ~/Claude/Projects/_template/decisions/README.md << 'EOF'
# Decisions Log

| Date | Decision | Rationale | Alternatives rejected |
|---|---|---|---|
EOF

echo "   ✓ ~/Claude/Projects/_template/"

# ── Done ──────────────────────────────────────────────────────────────
echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Install gstack manually (see setup/SETUP.md)"
echo "  2. Open a project: cp -r ~/Claude/Projects/_template ~/Claude/Projects/your-project"
echo "  3. Start a session in Claude Code"
