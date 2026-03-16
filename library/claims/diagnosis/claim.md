# Claim Type

Claim type name: `diagnosis`
Purpose: Preserve the concrete wiki problems that were actually present and that
justified the pass.
Primary trust question: Did this pass respond to real, observed wiki problems
rather than a vague intuition?
Default evidence kind: problem-diagnosis proof thread
Why this claim matters: A cleaned-up final state often erases the original
overlap, drift, ambiguity, unsupported claims, missing seams, or broken
propagation that made the pass necessary.

## Applies When

Use this claim type when:

- the pass identifies concrete clarity failures in the scoped wiki slice,
- later trust depends on knowing why work was necessary,
- the run claims that a specific problem justified a specific intervention.

## Material Triggers

- baseline scan identifies overlap, drift, missing structure, weak definitions,
  unsupported claims, or propagation gaps,
- audit or review reveals concrete clarity failures,
- the pass needs to justify why a transformation or escalation was chosen.

## Use A Different Claim Type When

- the question is what the pass intended to achieve overall; use
  `intent-target`,
- the question is which conceptual move was applied; use `transformation`,
- the question is what uncertainty remains; use `residual-uncertainty`.

## Split Or Escalate When

- multiple unrelated problems would need independent evidence threads,
- one problem requires a different corrective move than another,
- the diagnosis is still speculative and should remain under
  `residual-uncertainty`.

## Claim Sentence Template

- `<scoped subject> had <specific clarity problem>, evidenced by <concrete
  observations>, and that problem justified this pass.`

## A Good Concrete Claim Includes

- the scoped subject,
- the specific problem type,
- the observations that make the problem real rather than speculative,
- the practical effect on reader understanding or task completion,
- the boundary of the diagnosis.

## Avoid

- vague claims like “docs were confusing” without concrete observations,
- embedding the chosen solution into the diagnosis,
- mixing multiple independent problems in one claim,
- treating assumptions as observed facts.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: baseline scan, hotspots, known confusions, and terminology notes,
- `canonical-sources.md`: when diagnosis depends on conflicting authorities,
- `decision-ledger.md`: when a fixed decision explains why a problem matters,
- `receipts/`: to show which diagnosis led to which action,
- scoped pages or sections: before-state surfaces showing the problem,
- audit outputs: consistency, precision, or traceability failures,
- other inputs: owner-reported pain points when those are later tied to
  observable wiki evidence.

### Update These Artifacts When

- `plan.md`: new material problem types are discovered,
- `canonical-sources.md`: diagnosis reveals authority conflict,
- `decision-ledger.md`: diagnosis exposes a decision dependency or contradiction,
- `report.md`: summarize which diagnosed problems were addressed and which
  remain,
- receipts: note which diagnosis triggered the applied action.

## Related Claim Types

- `intent-target`
- `transformation`
- `coverage-propagation`
- `residual-uncertainty`
