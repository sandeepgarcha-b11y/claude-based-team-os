# PRD: Passwordless Login

**Status:** in review · **Owner:** ic · **Last updated:** 2026-05-14

## Problem
~30% of sign-in attempts fail or get abandoned at the password step (resets,
forgotten passwords, typos on mobile). Each failed login is a chance for a user
to bounce, and password support is our #2 support-ticket category.

## Goal & non-goals
- **Goal:** let users sign in without a password via a one-time email magic link,
  lifting login completion.
- **Non-goals:** passkeys/WebAuthn (a later phase), SSO for enterprise, removing
  passwords entirely for existing users.

## Users
Returning consumer users on mobile web who already have an account — the segment
where password friction is highest.

## Solution sketch
User enters email → we send a short-lived signed magic link → clicking it
creates an authenticated session. Link expires in 10 minutes and is single-use.
Existing password login remains available as a fallback.

## Success metrics
- **Primary:** login completion rate **+8pp** within 30 days of full rollout.
- **Guardrails:** no increase in account-takeover reports; auth p95 latency flat.

## Open questions
- Email deliverability/latency on the magic-link send — acceptable p95?
- Fallback UX when a link expires — resend inline, or restart?

## Rollout
Phased: 5% → 25% → 100% over two weeks, gated on the guardrail metrics. Kill
switch: feature flag `passwordless_login` reverts all users to password login
instantly. Instrumentation (login funnel dashboard) is a prerequisite for ramp —
**currently missing.**
