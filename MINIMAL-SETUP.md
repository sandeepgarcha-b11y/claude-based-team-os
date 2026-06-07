# Minimal setup

This repo is meant to be *run*, not just read. Five minutes to demo it, ten to
make it yours.

## Run it (90-second demo flow)

Open the repo in Claude Code and run these three in order. They tell the whole
story — **memory → function → growth.**

1. **`weekly-synthesis`**
   Claude reads `feature-index.yaml` and the artifacts, and produces a status
   digest. *Shows: it already knows the org (memory + the chief-of-staff function).*

2. **`launch-gate login-with-a-code`**
   Claude reviews the feature against the checklist and returns **NO-GO** —
   because the registry shows `dashboard: null` (login funnel not yet built) and
   the email deliverability p95 question is unresolved. *Shows: judgment encoded
   as a repeatable gate (the eng/QA function), keying off real tracked gaps.*

3. **`draft-prd`** for **`referral-loop`** (the planned feature with `prd: null`)
   Claude writes a PRD and updates the registry row. *Shows: the system grows —
   adding a function/artifact, not just answering a question (the PM function).*

A good sanity check before any of that: ask *"What features are in flight and
where are their PRDs?"* A correctly-guided agent reads `feature-index.yaml` and
cites `product/prd-login-with-a-code.md` — it does **not** invent a doc.

## Make it yours

1. Replace the two sample features in `feature-index.yaml` with your real ones.
2. Drop a real (or sanitized) PRD into `product/` and link it from the registry.
3. Log one real decision in `decisions/` — that's where memory starts compounding.
4. Edit `ROLES.md` to reflect which functions *you* cover and which are "not yet."
5. Add a skill when you find yourself repeating a workflow — that's "hiring" a
   function. Good next candidates: `customer-call-summary`, `metrics-pull`.

## Notes

- **Tool-agnostic.** Everything except `.claude/` is plain Markdown/YAML, so the
  memory ports to any harness. The `.claude/` folder is the Claude Code wiring.
- **Optional hook.** `.claude/hooks/session-start.sh` just echoes orientation
  text. If you want zero config, delete it and its entry in `settings.json`.
