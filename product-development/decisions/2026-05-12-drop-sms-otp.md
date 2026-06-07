# Decision: drop SMS OTP in favor of email magic links

**Date:** 2026-05-12 · **Owner:** ic · **Feature:** passwordless-login

## Context
For passwordless login we considered two delivery channels: SMS one-time codes
(OTP) and email magic links. We needed to pick one for v1.

## Decision
Ship **email magic links** for v1. Defer SMS OTP indefinitely.

## Alternatives considered
- **SMS OTP** — familiar UX, but per-message cost scales with usage, carrier
  deliverability is uneven internationally, and SIM-swap/SMS-interception is a
  known account-takeover vector.
- **Both at launch** — doubles surface area and instrumentation for no proven
  v1 benefit.

## Consequences
- Lower variable cost and no telecom dependency.
- We inherit email deliverability/latency risk — flagged as an open question in
  the PRD.
- Users without email access are unaffected: password login remains the fallback.
