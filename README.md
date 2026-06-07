# claude-based-team-os

An **institutional-memory repo where one IC + Claude operates as a full team.**

This is not a chatbot transcript and not a folder of prompts. It's a small
*operating system* for product/growth work: persistent memory (artifacts +
decisions), repeatable team functions (skills), and a single source of truth
(a feature registry) that an AI agent reads to behave like a teammate who
already knows the org.

> **The harness is swappable. The institutional memory isn't.**

## Thesis

One individual contributor, paired with Claude run as a *system* rather than a
chat window, can ship at the velocity of a whole team. The repo holds the
memory and the functions; the human holds the taste, priorities, and the
go/no-go call. See **[NARRATIVE.md](NARRATIVE.md)** for the full story.

## Quickstart

1. Open this repo in Claude Code (or any agentic harness — the content is plain
   Markdown/YAML).
2. Read **[MINIMAL-SETUP.md](MINIMAL-SETUP.md)** to run the 90-second demo flow.
3. Read **[NARRATIVE.md](NARRATIVE.md)** for the interview script and soundbites.

## Layout

```
claude-based-team-os/
├── CLAUDE.md                # operating config the agent loads every session
├── NARRATIVE.md             # the interview centerpiece
├── MINIMAL-SETUP.md         # make-it-yours guide + demo flow
├── .claude/
│   ├── settings.json        # registers the session-start hook
│   ├── hooks/               # orientation at session start
│   └── skills/              # repeatable team functions (the "hires")
│       ├── draft-prd/       #   → the PM
│       ├── weekly-synthesis/#   → the chief of staff
│       └── launch-gate/     #   → the eng/QA sign-off
└── product-development/
    ├── feature-index.yaml   # THE registry: every feature → its artifacts
    ├── ROLES.md             # the "org chart" of functions this OS covers
    ├── product/             # PRDs and product artifacts
    └── decisions/           # decision log — memory that compounds
```
