# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the specific problem type and the scoped subject.
- Keep the claim diagnostic, not solution-shaped.

## Methodology References

- Record the claim type folder path.
- Link relevant baseline scan notes in `plan.md`.
- Link receipts when the diagnosis directly triggered an action.
- Link audit or review outputs that surfaced the problem.

## Method Or Context

- Explain how the problem was identified.
- Record whether it came from baseline scan, audit failure, owner clarification,
  or cross-page comparison.
- Note why the problem mattered for the target audience or task.

## Observations

- Record the concrete before-state observations that show the problem.
- Include conflicting headings, duplicated claims, unsupported assertions,
  ambiguous definitions, or missing seams as applicable.
- Separate observed symptoms from interpretation.
- Record any counter-evidence that narrows the diagnosis.

## Raw Artifacts

- Reference before-state page excerpts or links.
- Reference scan notes, audit notes, or issue lists.
- Reference receipts where the diagnosis triggered an action.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the problem is concretely observed and
  sufficiently bounded.
- Note the limiting factor when the diagnosis remains speculative.

## Open Questions Or Follow-Ups

- Record unresolved ambiguity about the root problem.
- Record any still-unverified part of the diagnosis.
- Include follow-up when a suspected issue needs separate confirmation.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the diagnosed problem is concretely observable and sufficiently
  bounded to justify the work.
- Not enough when: the diagnosis is mostly intuition or owner memory without
  wiki evidence.

### mixed

- Use when: the problem is real but some part of its scope, cause, or impact
  remains only partially evidenced.
- Not enough when: the central problem itself is still uncertain.

### incomplete

- Use when: there are indications of a problem but not enough evidence yet to
  justify the full diagnosis.
- Not enough when: the problem is already contradicted by the observations.

### open

- Use when: the diagnosis thread is active and still gathering evidence.
- Not enough when: work is already presented as justified without finishing the
  diagnosis.

### failed

- Use when: the claimed problem is not supported by the observations or was
  materially misdiagnosed.
- Not enough when: the diagnosis is simply partial but still plausible.

## Evidence Thread Rules

Create a new evidence item when:

- a different problem type appears,
- a different scoped subject needs separate diagnosis,
- one thread would otherwise mix distinct root problems.

### Enrich An Existing Evidence Item When

- more observations strengthen the same diagnosis,
- the problem boundary is refined,
- the same diagnostic thread later supports a transformation claim.

### Do Not Mix

- diagnosis with the transformation used to address it,
- separate problems that need separate corrective moves,
- observed problems with unresolved assumptions that belong in
  `residual-uncertainty`.

### Close Out When

- the diagnosis is concrete enough to justify the work or defer it,
- the verdict reflects the strength of support,
- remaining uncertainty is explicit.
