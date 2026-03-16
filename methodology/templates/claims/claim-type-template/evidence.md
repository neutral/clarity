# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Keep it scoped and inspectable.
- Note any limitation that affects trust.

## Methodology References

- Record the claim type folder path.
- Link relevant preset, action, persona, plan section, receipt, register, or
  ledger entries.
- Link canonical sources or decisions when they materially support the claim.

## Method Or Context

- Explain why this claim became active in the pass.
- Record the method used to assess or change it.
- Name the comparison basis or review surface.

## Observations

- Record the concrete observations that support or weaken the claim.
- Prefer before and after evidence, mismatch lists, changed surfaces, and
  negative findings that define the trust boundary.
- Separate observed facts from interpretation.

## Raw Artifacts

- Store bulky artifacts beside the evidence file and reference them here.
- Examples: diff excerpts, screenshots, propagation matrices, audit notes,
  command output, receipt links.

## Verdict

- Use the verdict meanings defined below.
- Make the verdict inspectable from the observations above.
- Note the limiting factor when the verdict is not `supported`.

## Open Questions Or Follow-Ups

- Record unresolved items that limit trust in the current claim.
- Include revisit triggers and owners when known.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when:
- Not enough when:

### mixed

- Use when:
- Not enough when:

### incomplete

- Use when:
- Not enough when:

### open

- Use when:
- Not enough when:

### failed

- Use when:
- Not enough when:

## Evidence Thread Rules

Create a new evidence item when:

- the proof target changes materially,
- the scoped subject changes materially,
- the claim is no longer inspectable as one thread.

### Enrich An Existing Evidence Item When

- the same concrete claim is gaining more observations,
- the same claim is gaining more raw artifacts,
- the verdict is being refined without changing the proof target.

### Do Not Mix

- unrelated concrete claims,
- different scoped subjects that need independent verdicts,
- support material that belongs to a different claim type.

### Close Out When

- the verdict is stable for the current run,
- any remaining limits are recorded under open questions or follow-ups.
