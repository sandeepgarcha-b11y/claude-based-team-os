# Decision: ship email-based OTP first; defer SMS and push to a future phase

**Date:** 2026-05-12 · **Owner:** ic · **Feature:** login-with-a-code

## Context

For "Login with a Code" we needed to pick a delivery channel for the one-time
code. The options were email, SMS, and app-based push notifications. We had to
choose a v1 scope before starting security review.

## Decision

Ship **email-based OTP for v1.** Treat SMS and push as a future-phase expansion.

## Alternatives considered

- **SMS OTP** — familiar pattern (users expect it from bank auth), but adds
  carrier dependency, per-message cost that scales with volume, and
  SMS-interception/SIM-swap risk. Deferred, not ruled out.
- **Push notifications (app)** — best UX for app users, but out of scope for
  the web login flow targeted in v1.
- **All three channels at launch** — triples the surface area, security review
  scope, and instrumentation work for unproven incremental v1 benefit.

## Consequences

- Faster v1: single delivery channel means smaller security review scope and
  a cleaner pre/post measurement.
- We inherit email deliverability risk — flagged as an open question in the PRD;
  p95 latency must be confirmed before launch.
- SMS and push remain on the roadmap as the natural next expansion once email
  channel performance is proven.
