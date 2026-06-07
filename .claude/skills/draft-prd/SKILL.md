---
name: draft-prd
description: Draft a structured PRD for a new feature and register it in feature-index.yaml. Use when starting a new feature, capturing a product idea, or when a feature in the registry has prd:null.
---

# draft-prd — the PM function

Turn a rough idea into a structured PRD and wire it into the org's memory.

## Inputs

Gather (ask the human only for what you can't infer):
- **Feature name** and a slug (kebab-case).
- **Problem** — who hurts, and how much.
- **Target user** — the specific segment.
- **Success metric** — one primary, measurable.

If the feature already exists in `product-development/feature-index.yaml` with
`prd: null`, reuse its slug, name, and `success_metric`.

## Steps

1. Read `product-development/feature-index.yaml`. If the feature exists, pull its
   row; otherwise plan to add one.
2. Write the PRD to `product-development/product/prd-<slug>.md` using the
   template below.
3. Update the registry: set `prd: product/prd-<slug>.md` on the existing row, or
   append a new feature object (`slug`, `name`, `status`, `owner: ic`, `prd`,
   `decisions: []`, `success_metric`, `dashboard: null`).
4. Report what you wrote and the registry change, citing both paths.

## PRD template

```markdown
# PRD: <Feature Name>

**Status:** draft · **Owner:** ic · **Last updated:** <YYYY-MM-DD>

## Problem
<Who has the problem, how painful, why now.>

## Goal & non-goals
- **Goal:** <the single outcome this ships for.>
- **Non-goals:** <what we are explicitly not doing.>

## Users
<The specific segment and their job-to-be-done.>

## Solution sketch
<The shape of the solution. Enough to align, not to over-spec.>

## Success metrics
- **Primary:** <one measurable metric + target.>
- **Guardrails:** <metrics that must not regress.>

## Open questions
- <Known unknowns blocking confidence.>

## Rollout
<Phasing, kill-switch / rollback, and instrumentation plan.>
```

## Output

A new/updated PRD file, an updated registry row, and a one-line summary citing
both paths. Do not mark the PRD approved — that is the human's call.
