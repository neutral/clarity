# Claim Type

Claim type name: `residual-uncertainty`
Purpose: Preserve the assumptions, open questions, unresolved conflicts, and
revisit conditions that remain after the pass.
Primary trust question: What important uncertainty remains, and how should it
limit trust, extension, or reuse of this pass?
Default evidence kind: residual-uncertainty proof thread
Why this claim matters: Unrecorded uncertainty turns into false confidence.
Later readers need to know where trust in the result stops.

## Applies When

Use this claim type when:

- the pass cannot fully resolve an important ambiguity,
- assumptions or questions remain material to future trust,
- the run deliberately defers an issue rather than inventing a false answer.

## Material Triggers

- intake leaves an open question unresolved,
- audit reveals a blind spot that cannot be closed in the current run,
- authority, governance, or propagation issues remain partially unresolved,
- docs label assumptions or questions that materially affect later use.

## Use A Different Claim Type When

- the question is whether the pass target was clear; use `intent-target`,
- the question is whether a problem was concretely diagnosed; use `diagnosis`,
- the question is whether a specific approval or owner exists; use
  `governance-ownership`.

## Split Or Escalate When

- multiple unrelated uncertainties need different owners or revisit triggers,
- one uncertainty has become concrete enough to move into a diagnosis or
  authority claim,
- the uncertainty materially blocks the run and needs escalation instead of
  passive recording.

## Claim Sentence Template

- `<scoped subject> still depends on <assumption, open question, unresolved
  conflict, or revisit condition>, so trust in <result or boundary> is limited
  until <resolution condition>.`

## A Good Concrete Claim Includes

- the scoped subject,
- the specific uncertainty,
- what part of trust it limits,
- the condition that would resolve or revisit it,
- the owner when one exists.

## Avoid

- vague notes like “more work may be needed,”
- mixing resolved problems with unresolved uncertainty,
- treating a diagnosis or authority resolution as still uncertain when it is
  already fixed,
- hiding important uncertainty in a report footnote instead of a claim.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: open questions, assumptions, and known confusions,
- `canonical-sources.md`: when uncertainty is about source authority,
- `decision-ledger.md`: when uncertainty is about open or conditional decisions,
- `receipts/`: actions that explicitly defer or surface uncertainty,
- scoped pages or sections: labeled assumptions, questions, or deferred notes,
- audit outputs: blind spots or unresolved failures,
- other inputs: owner comments or tickets that indicate unresolved posture.

### Update These Artifacts When

- `plan.md`: new uncertainty is surfaced or an old one is resolved,
- `canonical-sources.md`: authority uncertainty is made explicit,
- `decision-ledger.md`: a decision remains open, conditional, or contested,
- `report.md`: summarize what remains uncertain and how that limits trust,
- receipts: note when an action intentionally surfaced rather than resolved an
  issue.

## Related Claim Types

- `intent-target`
- `diagnosis`
- `verification-posture`
- `governance-ownership`
