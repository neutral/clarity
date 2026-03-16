# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the unresolved assumption, question, conflict, or revisit condition.
- State what trust boundary it limits.

## Methodology References

- Record the claim type folder path.
- Link relevant `plan.md`, `decision-ledger.md`, `canonical-sources.md`, or
  receipt entries.
- Link in-scope pages where the uncertainty is labeled.

## Method Or Context

- Explain how the uncertainty became visible.
- Record whether the run chose to defer, escalate, or merely label it.
- Note why resolving it was out of scope, blocked, or unsafe in the current
  pass.

## Observations

- Record the concrete evidence that the uncertainty is real and still open.
- Record what part of the result remains trustworthy despite the uncertainty.
- Record what part of the result should not be over-trusted.
- Record any owner, revisit trigger, or missing input tied to the uncertainty.

## Raw Artifacts

- Reference labeled assumptions or questions in the docs.
- Reference plan, report, ledger, or receipt entries that preserve the
  uncertainty.
- Reference audit notes when the uncertainty came from a blind spot or failed
  check.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the uncertainty is explicitly and honestly
  bounded.
- Note the limiting factor when the uncertainty is only partially surfaced.

## Open Questions Or Follow-Ups

- Record what remains unresolved, who owns it, and what should trigger revisit.
- Record when a separate pass or approval is needed.
- Record any risk of false confidence if the uncertainty is ignored.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the important residual uncertainty is explicit, bounded, and linked
  to a clear trust limitation or revisit condition.
- Not enough when: the run says something is “still open” without showing what
  that limits.

### mixed

- Use when: some important uncertainty is explicit but one part remains weakly
  bounded, ownerless, or under-labeled.
- Not enough when: consequential uncertainty remains mostly implicit.

### incomplete

- Use when: the run likely has unresolved uncertainty, but it is not yet
  recorded clearly enough to guide later trust.
- Not enough when: the pass actively presents uncertain material as settled.

### open

- Use when: the uncertainty thread is active and still being clarified or routed
  to an owner.
- Not enough when: the uncertainty has already been resolved but not updated.

### failed

- Use when: consequential uncertainty was hidden, invented away, or left
  materially implicit.
- Not enough when: only minor housekeeping questions remain unlabeled.

## Evidence Thread Rules

Create a new evidence item when:

- a distinct unresolved issue needs its own owner or revisit trigger,
- one uncertainty affects a different trust boundary than another,
- the uncertainty becomes large enough to justify a separate follow-up pass.

### Enrich An Existing Evidence Item When

- the same uncertainty gains clearer bounds or ownership,
- more observations show what remains limited by it,
- the verdict changes as the uncertainty is reduced or resolved.

### Do Not Mix

- multiple unrelated uncertainties,
- unresolved uncertainty with a resolved diagnosis or authority claim,
- uncertainty with approval evidence unless the owner/approval posture is itself
  the issue.

### Close Out When

- the uncertainty and its trust boundary are explicit,
- owner or revisit conditions are recorded when available,
- the verdict reflects whether the uncertainty is responsibly surfaced.
