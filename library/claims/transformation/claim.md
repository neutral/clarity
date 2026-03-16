# Claim Type

Claim type name: `transformation`
Purpose: Preserve the conceptual moves applied to address a diagnosed clarity
problem.
Primary trust question: What conceptual change did this pass actually apply, and
was it the right kind of move for the diagnosed problem?
Default evidence kind: transformation proof thread
Why this claim matters: A diff shows local edits, but not the methodology-level
move that was chosen, such as canonicalizing, splitting, defining, aligning,
cross-linking, tightening, deferring, or escalating.

## Applies When

Use this claim type when:

- the pass applies a named conceptual move to improve the wiki,
- later readers need to extend or preserve the same intervention coherently,
- the same diagnosis could have been addressed in multiple ways.

## Material Triggers

- an action materially changes structure, terminology, canonical routing,
  traceability, or scope expression,
- the run records an added action triggered by a diagnosed problem,
- reviewers need to understand the conceptual move rather than just the text
  diff.

## Use A Different Claim Type When

- the question is whether the problem was real before the move; use
  `diagnosis`,
- the question is whether all related surfaces were checked; use
  `coverage-propagation`,
- the question is whether the move was approved or owned; use
  `governance-ownership`.

## Split Or Escalate When

- multiple conceptual moves need independent evaluation,
- one move is structural and another is semantic with different risk posture,
- the transformation becomes a candidate custom preset or new action.

## Claim Sentence Template

- `<pass or scoped subject> applied <conceptual move> to address
  <diagnosed problem>, within <boundary or limitation>.`

## A Good Concrete Claim Includes

- the scoped subject,
- the conceptual move by name,
- the diagnosed problem it addresses,
- the boundary or limit of the move,
- the most important side effect or tradeoff when relevant.

## Avoid

- describing local edits without naming the conceptual move,
- folding propagation claims into the transformation itself,
- hiding a substantive reframe behind cosmetic language,
- treating any edit as a transformation when no conceptual move was applied.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: selected preset, core and conditional actions, and change
  classification,
- `canonical-sources.md`: when the move changes canonical routing,
- `decision-ledger.md`: when the move locks or reopens a decision,
- `receipts/`: action-level record of the applied move,
- scoped pages or sections: before and after surfaces,
- audit outputs: to assess whether the move improved the targeted quality bar,
- other inputs: persona guidance that shaped the move.

### Update These Artifacts When

- `plan.md`: new actions are added or the move changes classification,
- `canonical-sources.md`: the transformation changes what is canonical,
- `decision-ledger.md`: the move creates or depends on a decision posture,
- `report.md`: summarize which conceptual moves were applied and why,
- receipts: capture the applied move and changed surfaces.

## Related Claim Types

- `diagnosis`
- `coverage-propagation`
- `verification-posture`
- `governance-ownership`
