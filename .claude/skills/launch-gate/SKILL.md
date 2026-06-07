---
name: launch-gate
description: Run a pre-launch readiness review for a feature against a fixed checklist and return GO / NO-GO with specific gaps. Use before shipping a feature.
---

# launch-gate — the eng/QA sign-off function

A consistent, unsentimental ship-readiness review. Judgment encoded as a
checklist; the human still owns the final call.

## Inputs

- **Feature slug** (e.g. `login-with-a-code`). If omitted, ask which feature.

## Steps

1. Read `product-development/feature-index.yaml` and pull the row for the slug.
   If the slug isn't found, stop and say so.
2. Open the feature's artifacts (`prd`, `decisions`) to evaluate each gate.
3. Score every gate as PASS / FAIL / UNKNOWN with a one-line reason citing the
   evidence (or the missing field).
4. Return GO only if all gates PASS. Otherwise NO-GO with the specific blocking
   gaps and the smallest next action for each.

## The gates

1. **PRD exists & approved** — a PRD file is registered and marked approved.
2. **Success metric defined & instrumented** — a primary metric exists and there
   is a way to measure it (e.g. a `dashboard`).
3. **Rollout & kill-switch plan** — the PRD's Rollout section covers phasing and
   rollback.
4. **Key decisions logged** — material trade-offs are captured in `decisions/`.
5. **Open questions resolved** — no blocking unknowns remain in the PRD.

## Output format

```markdown
# Launch gate: <Feature> — <GO ✅ | NO-GO ⛔>

| Gate | Status | Notes |
|------|--------|-------|
| PRD approved | PASS/FAIL/UNKNOWN | <reason + path> |
| Metric instrumented | … | … |
| Rollout & kill-switch | … | … |
| Decisions logged | … | … |
| Open questions resolved | … | … |

**Verdict:** <GO/NO-GO>. <If NO-GO: the blocking gaps and the next action for each.>
```

Surface readiness; never declare the feature shipped yourself. The human signs.
