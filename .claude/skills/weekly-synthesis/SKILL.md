---
name: weekly-synthesis
description: Roll up the week across every in-flight feature into a concise, Slack-ready status digest. Use for weekly updates, standups, or a quick "where do things stand" snapshot.
---

# weekly-synthesis — the chief-of-staff function

Read everything so the human doesn't have to, then produce one digest.

## Inputs

None required. Optionally a time window (default: "since last digest / this
week").

## Steps

1. Read `product-development/feature-index.yaml` — the full list of features and
   their artifacts.
2. For each feature, open its referenced artifacts (`prd`, each entry in
   `decisions`) to understand current state. Note any `null` fields — those are
   gaps.
3. Group by status (`shipped` / `in-progress` / `planned`) and identify recent
   decisions and risks.
4. Emit the digest below. Keep it skimmable; link artifact paths inline.

## Output format

```markdown
# Weekly synthesis — <YYYY-MM-DD>

## ✅ Shipped
- <Feature> — <one line on impact / metric>. (`<path>`)

## 🚧 In progress
- <Feature> — <state, next step>. (`prd: <path>`)

## 📋 Planned
- <Feature> — <what it's waiting on>.

## 🧭 Decisions made
- <Decision> — <one line>. (`<decision path>`)

## ⚠️ Risks & gaps
- <Feature>: <missing PRD / metric not instrumented / open question>.
```

Be honest about gaps — a tracked risk is the point of the digest, not a blemish
to hide. Cite a path for every claim.
