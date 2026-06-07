# claude-based-team-os

An AI-native operating system for product and growth work.

It turns one person's repo into durable team memory, reusable workflows, and a
single source of truth — so Claude behaves like a teammate who already knows the
org, not a chat window that resets every session.

> **The harness is swappable. The institutional memory isn't.**

---

## Why this matters

Most AI workflows are ephemeral. A good prompt, a useful answer, then reset.
Three things break that pattern:

- **Teams lose context in chats and scattered docs.** Decisions disappear into
  Slack threads. Tribal knowledge lives only in people's heads. Every new session
  starts cold.
- **AI gets dramatically better when it can read structured memory.** A model
  with access to a feature registry, a decision log, and a set of defined
  functions behaves like a colleague who's been here for months — not a blank
  slate.
- **The goal isn't faster output. It's compounding knowledge.** Each artifact
  added makes the next task easier. Memory compounds; prompts don't.

This repo is a working prototype of that idea, built for product and growth work.

---

## What's inside

Three layers that make it a system, not just a folder of prompts:

| Layer | What it does | Files |
|---|---|---|
| **Memory** | Artifacts that persist across sessions | `product-development/product/`, `decisions/` |
| **Registry** | Single source of truth: every feature mapped to its docs and gaps | `feature-index.yaml` |
| **Skills** | Repeatable team functions the agent executes on demand | `.claude/skills/` |

The skills each cover a function an IC would normally need a hire for:

| Skill | Function |
|---|---|
| `draft-prd` | the PM — writes and registers a structured PRD |
| `weekly-synthesis` | the chief of staff — rolls up everything in flight |
| `launch-gate` | the eng/QA sign-off — returns GO / NO-GO with specific gaps |

---

## 60-second demo

Open the repo in Claude Code and run these three, in order:

```
weekly-synthesis
```
→ Claude reads the registry and artifacts and produces a status digest.
*It already knows the org.*

```
launch-gate login-with-a-code
```
→ Returns **NO-GO** with the specific gaps pulled from the registry's tracked
`null`s — the login funnel dashboard isn't built, and a key open question is
unresolved. *Judgment, encoded and repeatable.*

```
draft-prd referral-loop
```
→ Writes a PRD for the planned feature and updates the registry row.
*The system grows.*

That sequence — memory → function → growth — is the whole thesis in under two
minutes. The model isn't guessing; it's reading a structured system.

Before running any of that, try: *"What features are in flight and where are
their PRDs?"* A correctly configured agent reads `feature-index.yaml` and cites
the real doc. It does not invent one.

---

## The future of work angle

This is a prototype for a world where AI systems don't just answer questions —
they hold context, follow team norms, and execute repeatable work inside a shared
operating system.

The shift is moving from *chatting with AI* to *running a system with AI*. The
repo is the org. Claude is the workforce that reads it. The human owns direction,
judgment, and the go/no-go call — and covers the full surface area of a team.

One person running this can hold PM, ops, and QA functions with the institutional
memory of a much larger team. That's not a productivity hack. It's a different
model for how knowledge work gets done.

See [WORKING-PHILOSOPHY.md](WORKING-PHILOSOPHY.md) for the full design rationale.

---

## Layout

```
claude-based-team-os/
├── CLAUDE.md                # operating config loaded every session
├── WORKING-PHILOSOPHY.md    # design rationale and working principles
├── MINIMAL-SETUP.md         # make-it-yours guide and demo walkthrough
├── .claude/
│   ├── settings.json        # session-start hook registration
│   ├── hooks/               # orients the agent at session start
│   └── skills/
│       ├── draft-prd/       # PM function: write and register a PRD
│       ├── weekly-synthesis/# chief-of-staff function: status rollup
│       └── launch-gate/     # eng/QA function: ship-readiness review
└── product-development/
    ├── feature-index.yaml   # THE registry: every feature → its artifacts
    ├── ROLES.md             # org chart of functions this OS covers
    ├── product/             # PRDs and product artifacts
    └── decisions/           # decision log — memory that compounds
```

---

## License

[MIT](LICENSE)
