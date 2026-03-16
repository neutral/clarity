# Claim Type

Claim type name: `intent-target`
Purpose: Preserve the stated purpose of the pass, the audience and task it
serves, and the success target used to judge whether the pass helped.
Primary trust question: Was this pass actually aimed at the problem it claims to
solve, for the audience it claims to serve?
Default evidence kind: run-intent proof thread
Why this claim matters: A later reader cannot judge success from cleaned-up docs
alone unless the pass's intended confusion reduction and success target remain
visible.

## Applies When

Use this claim type when:

- the pass states an intended clarity outcome,
- the pass names a primary audience and task,
- the run will later claim that the outcome was met or advanced.

## Material Triggers

- intake clarifies or changes the intended outcome,
- audience or task becomes specific enough to guide edits,
- definition of done or success criteria become explicit.

## Use A Different Claim Type When

- the question is whether the pass stayed inside scope or permissions; use
  `boundary-compliance`,
- the question is whether concrete wiki problems were actually present; use
  `diagnosis`,
- the question is whether checks passed; use `verification-posture`.

## Split Or Escalate When

- the pass contains multiple independent outcomes for different audiences,
- the pass goal changes materially during execution,
- the run mixes a stable target with unresolved target ambiguity.

## Claim Sentence Template

- `<scope or pass> was intended to reduce <specific confusion or failure mode>
  for <audience doing task>, and success meant <concrete improvement target>.`

## A Good Concrete Claim Includes

- the scoped pass or slice of the wiki,
- the confusion, ambiguity, or failure mode being reduced,
- the primary audience and what they need to do,
- the concrete success target or definition of done,
- any declared non-goal that limits interpretation.

## Avoid

- restating the user request without naming the problem being reduced,
- describing the desired edits instead of the intended outcome,
- omitting the audience or task,
- treating “done” as self-evident.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: intake, intent, goals, non-goals, and definition of done,
- `canonical-sources.md`: when the intended target depends on an external source,
- `decision-ledger.md`: when the run target changes or is constrained by a
  fixed decision,
- `receipts/`: when an action materially advances or re-scopes the target,
- scoped pages or sections: to confirm the outcome matches the actual slice,
- audit outputs: to assess whether the success target was met,
- other inputs: explicit owner instructions or approval records that constrain
  the intended outcome.

### Update These Artifacts When

- `plan.md`: the intended outcome, audience, task, non-goals, or done
  definition changes or becomes explicit,
- `canonical-sources.md`: the target depends on a newly introduced source of
  truth,
- `decision-ledger.md`: the run target is narrowed or re-framed by a decision,
- `report.md`: summarize whether the target was met, partially met, or left
  open,
- receipts: note which applied actions materially advanced the target.

## Related Claim Types

- `diagnosis`
- `transformation`
- `verification-posture`
- `residual-uncertainty`
