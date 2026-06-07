# How I see work with Claude going

*An interview narrative. First person, ~2 pages, meant to be spoken from. Bold
lines are liftable soundbites.*

---

## 1. The thesis

**One IC plus Claude can ship at the velocity of a whole team — if you stop
treating Claude as a chatbot and start treating it as an operating system for an
org.** The leverage isn't in better prompts. It's in giving the model a
*system* to operate inside: shared memory, defined functions, and rules of
engagement. This repo is a small, working example of that system for
product/growth work.

## 2. The mental-model shift

Most people use Claude like a vending machine: type a question, get an answer,
walk away. Every session starts cold and forgets everything. That caps you at
"a smart assistant."

The shift is this: **you don't chat with Claude — you run a system with it.**

| Chat                         | An OS                                   |
|------------------------------|-----------------------------------------|
| Ephemeral, restarts cold     | Persistent memory that compounds        |
| One-off answers              | Repeatable, named functions             |
| Lives in your head           | Lives in the repo — shared & versioned  |
| You do the work              | You design the system that does it      |

The repo *is* the org. Claude is the workforce that reads it. My job moves up a
level — from doing the work to operating the system that does the work.

## 3. How this repo embodies it

A tour, by file:

- **Memory compounds → `decisions/` + `product/`.** Every decision and artifact
  is captured once and reusable forever. When I ask "why did we drop SMS OTP?",
  Claude cites `decisions/2026-05-12-drop-sms-otp.md` instead of re-deriving it.
  **The org gets smarter; the prompt doesn't get longer.**

- **Skills = repeatable team functions → `.claude/skills/`.** `draft-prd` is the
  PM. `weekly-synthesis` is the chief of staff who reads everything. `launch-gate`
  is the eng/QA sign-off. **A skill is how you hire a function without hiring a
  person.**

- **Registry = single source of truth → `feature-index.yaml`.** One lookup maps
  every feature to its PRD, decisions, and metric — including the `null`s that
  flag gaps. **It's the difference between an assistant that guesses and a
  teammate that knows.**

- **The human does taste, judgment, and review → `ROLES.md`.** The OS does
  volume and consistency. I own direction, priorities, and the go/no-go call.
  `launch-gate` can return NO-GO; only I decide to ship anyway.

## 4. Soundbites

- "The harness is swappable. The institutional memory isn't."
- "Skills are how you hire a function without hiring a person."
- "The registry is the difference between an assistant that guesses and a
  teammate that knows."
- "My job shifted from doing the work to designing the system that does the work —
  and owning the judgment calls."
- "Memory compounds; prompts don't."

## 5. Handling the pushbacks

**"Won't it hallucinate?"**
Yes — unconstrained. So I constrain it. `CLAUDE.md` makes two rules
non-negotiable: never reference a doc that isn't in the registry, and always cite
the path you used. The registry bounds the world to real artifacts, and
`launch-gate` is an explicit human-reviewed checkpoint. **Hallucination is a
systems problem, and I built the system to bound it.**

**"Isn't this just prompts in folders?"**
Prompts are stateless and per-person. This is persistent, shared, *versioned*
institutional memory with defined interfaces between functions. The prompt is the
least important part — swap the model or the harness and the memory survives.
**The asset is the org, not the prompt.**

**"What's left for the human?"**
The things that don't delegate: taste, prioritization, relationships, and
accountability. The OS removes the toil, not the judgment. **This is leverage,
not replacement** — it raises the ceiling on what one person is responsible for,
it doesn't remove the person.

## 6. The 90-second live demo (closer)

I'd rather show it than describe it. Three commands, in order:

1. **`weekly-synthesis`** → a status digest built from the registry and
   artifacts. *It already knows the org.*
2. **`launch-gate passwordless-login`** → **NO-GO**, with the specific gaps
   (metric not instrumented, open questions unresolved) pulled from the tracked
   `null`s. *Judgment, encoded and repeatable.*
3. **`draft-prd referral-loop`** → a new PRD plus a registry update. *The system
   grows.*

Memory → function → growth, in under two minutes. **That's how I see work with
Claude going: not a smarter chatbot, but a one-person team that compounds.**
