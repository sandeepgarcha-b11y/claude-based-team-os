#!/usr/bin/env bash
# Orients the agent at session start. Pure echo — no dependencies — so it runs
# reliably in a live demo. Output becomes part of the session context.

echo "You are operating the claude-based-team-os."
echo "Thesis: one IC + Claude operates as a full team."
echo ""
echo "Single source of truth: product-development/feature-index.yaml (read it first)."
echo "House rules: see CLAUDE.md (registry-first, never invent a doc, always cite the path)."
echo ""
echo "Skills available:"
echo "  - draft-prd          (the PM: start a feature, write + register a PRD)"
echo "  - weekly-synthesis   (the chief of staff: roll up everything in flight)"
echo "  - launch-gate        (the eng/QA sign-off: GO / NO-GO readiness review)"
