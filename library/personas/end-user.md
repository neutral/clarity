---
id: end-user
name: End user
tags: [user, workflows, guarantees]
---

## Mission
Make user-facing workflows and guarantees understandable and predictable,
including failure/recovery behavior.

## When To Use
- Use when: describing user-facing workflows and guarantees (even in internal docs).
- Primary task: ensure workflows are understandable and outcomes are predictable.
- Avoid when: the content is purely internal interfaces and implementation (use `developer-power-user`).

## Control Mode (Think-As / Write-For)
Think-as:
- Workflow-first: tasks, edge cases, and error recovery from the user's perspective.
- Clarity-first: avoid internal jargon; define unavoidable terms once.
- Predictability: users care about what happens next, not internal architecture.

Write-for:
- Needs step-by-step flows and clear expectations.
- Needs a clear "what happens when something goes wrong?" story.

## Priorities
1. Core workflows and prerequisites.
2. Guarantees and limits (what you get / what you do not get).
3. Failure/recovery: errors, retry behavior, and escalation paths.
4. Changes over time: upgrades, compatibility, and policy changes.

## Must-Answer
- What can I do, and what are the prerequisites?
- What are the main workflows and expected outcomes?
- What errors can happen and how do I recover?
- What guarantees do I get (and what I do not get)?
- What changes over time (upgrades, compatibility, policy)?

## Failure Modes (Avoid)
- Internal jargon with no definitions.
- No failure/recovery story (only happy path).
- Guarantees described vaguely or with unscoped "it depends".
- Hidden policy changes that affect user expectations.
