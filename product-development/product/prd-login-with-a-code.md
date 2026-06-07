# PRD: Login with a Code

**Status:** in review · **Owner:** ic · **Last updated:** 2026-05-14

## Problem

12% of users abandon the login flow because they cannot remember their password.
Average visit frequency is every 5.5 months — long enough for a password to be
completely forgotten. UX feedback and behavioural data both confirm that
password-related friction is the leading cause of login drop-offs. The fix is not
a better password-reset flow; it's removing the password requirement from the
most common login path.

## Goal & non-goals

- **Goal:** let users log in with a one-time code sent to their registered email,
  eliminating the need to recall a password and lifting overall login conversion.
- **Non-goals:** passkeys/WebAuthn (a later phase); SMS or push-based delivery
  channels (future consideration); removing the password option for users who
  prefer it.

## Users

Existing users with a registered email address — specifically the segment of
infrequent visitors (the 5.5-month-average-return group) where password recall
failure is highest.

## Solution sketch

On the login screen, users see a "Login with a Code" option alongside the
existing password field. They enter their email address; the system sends a
short-lived, single-use code to that address; they enter the code and gain
immediate access. Password login remains available as a fallback.

Key constraints:
- Code expires in 10 minutes, single-use.
- Security review required before launch.
- Onboarding copy must clearly explain the flow to avoid trust drop-off.

## Success metrics

- **Primary:** overall login CVR improvement above the 66.2% baseline.
- **Secondary:** reduction in password reset request volume.
- **Guardrails:** no increase in account-takeover reports; code delivery p95
  latency within acceptable bounds.

## Open questions

- Email deliverability/latency on code send — what is the p95, and is it
  acceptable to users before they abandon?
- Copy and UI treatment: how do we frame the feature so users trust it on first
  encounter?

## Risks

- **Email deliverability** — codes may land in spam or be delayed, creating a
  worse experience than the password it replaces.
- **Customer confusion / trust** — if not communicated clearly, users may not
  understand or trust the feature, defeating the conversion goal.

## Rollout

Pre/post analysis: measure login CVR and drop-off rates before and after the
feature is live. A login funnel dashboard is a prerequisite for measurement —
**this is currently unbuilt and a go/no-go dependency.**

Future channel expansion (post v1): SMS and app-based push notifications as
alternative delivery channels.
