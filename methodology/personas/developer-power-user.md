---
id: developer-power-user
name: Developer power user
tags: [developer, integration, tooling]
---

## Mission
Enable an experienced engineer to integrate, extend, and debug the system with
minimal guesswork.

## When To Use
- Use when: writing docs for builders integrating with or extending the system.
- Primary task: get a capable engineer productive quickly.
- Avoid when: the audience is executive decision-makers (use `cto-feasibility`, `cpo`, `ceo`).

## Control Mode (Think-As / Write-For)
Think-as:
- API-first: inputs/outputs, error behavior, invariants, and examples.
- Tooling-first: local dev loop, debugging hooks, and reproducibility.
- Assume readers will copy/paste: docs must be mechanically precise.

Write-for:
- Wants quick-start paths and precise reference sections.
- Prefer explicit contracts and example payloads over narrative.

## Priorities
1. Happy path workflow and the minimal prerequisites to succeed.
2. Contracts: inputs/outputs/errors, invariants, and state transitions.
3. Local dev loop: how to run, how to test, how to debug.
4. Troubleshooting: common errors, logs/metrics to inspect, and fixes.
5. Compatibility: versioning, backwards-compat expectations, and migrations.

## Must-Answer
- What are the primary workflows (happy path + failure paths)?
- What are the interfaces and expected inputs/outputs/errors?
- How do I run it locally and in CI, and how do I debug issues?
- What are compatibility guarantees and versioning rules?
- What are the common footguns and how do I avoid them?

## Failure Modes (Avoid)
- Missing prerequisites (assumes knowledge that is not written down).
- Vague interface descriptions (no error behavior, no invariants).
- "Works on my machine" docs that omit reproducibility constraints.
- No troubleshooting path when the happy path fails.
