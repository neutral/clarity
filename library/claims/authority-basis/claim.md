# Claim Type

Claim type name: `authority-basis`
Purpose: Preserve which sources, definitions, and prior decisions the pass
treated as authoritative when conflicts or ambiguity were resolved.
Primary trust question: Can a later reader trust the basis on which this pass
resolved competing definitions, facts, or decisions?
Default evidence kind: authority-resolution proof thread
Why this claim matters: Later consistency depends less on the final wording than
on which source of truth the run actually followed.

## Applies When

Use this claim type when:

- the pass relies on canonical sources to resolve drift or conflict,
- the run narrows meaning by choosing one definition or prior decision,
- later readers need to know why one source or posture won.

## Material Triggers

- conflicting pages, terms, or decisions appear,
- a canonical source is registered or updated,
- a locked decision constrains what the pass can say,
- the run removes duplication by routing readers to one authoritative location.

## Use A Different Claim Type When

- the question is whether the pass stayed inside scope or permissions; use
  `boundary-compliance`,
- the question is whether concrete inconsistency existed before the pass; use
  `diagnosis`,
- the question is who approved the resolution; use `governance-ownership`.

## Split Or Escalate When

- multiple unrelated authority conflicts appear,
- a source conflict cannot be resolved without owner input,
- one thread would otherwise mix source authority with audit evidence.

## Claim Sentence Template

- `<pass or scoped subject> treated <source, definition, or prior decision> as
  authoritative for <topic>, and resolved conflicting material against that
  basis.`

## A Good Concrete Claim Includes

- the topic or surface in conflict,
- the authoritative source, definition, or decision posture,
- the scope of that authority,
- what competing material was subordinated, linked, or deferred,
- any limit on the authority choice.

## Avoid

- saying something is canonical without naming the source,
- using authority language when the issue is really approval or ownership,
- hiding unresolved source conflict behind one chosen wording,
- treating “most recent edit” as authority without justification.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: canonical-source assumptions and fixed/open decisions,
- `canonical-sources.md`: source-of-truth entries and rationale,
- `decision-ledger.md`: locked or open decisions that constrain the run,
- `receipts/`: actions that aligned conflicting material to the authority basis,
- scoped pages or sections: the conflicting surfaces and resulting canonical
  destination,
- audit outputs: traceability and consistency checks,
- other inputs: external source docs or explicit owner direction when needed.

### Update These Artifacts When

- `plan.md`: authority assumptions are clarified or changed,
- `canonical-sources.md`: a new source becomes authoritative or authority
  ordering changes,
- `decision-ledger.md`: a decision becomes fixed, reopened, or used to resolve
  conflict,
- `report.md`: summarize which authority basis governed the pass,
- receipts: note where conflicting material was aligned or deferred.

## Related Claim Types

- `diagnosis`
- `transformation`
- `coverage-propagation`
- `governance-ownership`
