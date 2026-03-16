# Claim Type

Claim type name: `boundary-compliance`
Purpose: Preserve whether the pass stayed inside declared scope, exclusions,
permissions, and bounded second-order-fix rules.
Primary trust question: Can a later reader trust that this pass did not
overreach its declared operating boundaries?
Default evidence kind: boundary-compliance proof thread
Why this claim matters: Cleaned-up docs do not show which absences were
intentional, which reads or writes were disallowed, or whether out-of-scope
touches stayed inside the approved budget.

## Applies When

Use this claim type when:

- the run declares scope, exclusions, or second-order-fix allowances,
- permissions or operating scope constrain file access,
- later trust depends on knowing that untouched areas were intentionally
  untouched.

## Material Triggers

- `status.md` establishes operating scope or path permissions,
- `plan.md` defines scope, exclusions, or scope-drift budget,
- the run makes out-of-scope mechanical touches,
- reviewers need assurance that the pass did not exceed approval boundaries.

## Use A Different Claim Type When

- the question is which source or decision was treated as authoritative; use
  `authority-basis`,
- the question is who approved a high-impact edit; use `governance-ownership`,
- the question is which surfaces were checked for consistency after a change;
  use `coverage-propagation`.

## Split Or Escalate When

- one thread would mix scope compliance with approval compliance,
- the run includes multiple independently bounded scopes,
- a suspected violation requires separate treatment from ordinary compliance.

## Claim Sentence Template

- `<pass or scope> stayed within <declared scope and exclusions>, respected
  <permissions or operating boundaries>, and used only <bounded
  second-order-fix allowance if any>.`

## A Good Concrete Claim Includes

- the specific scope or slice of the pass,
- the key exclusions,
- the relevant permission boundary from `status.md`,
- any allowed second-order-fix rule and budget,
- any important read/write limitation that shapes interpretation.

## Avoid

- saying “in scope” without naming the actual boundary,
- mixing authority decisions with boundary compliance,
- omitting out-of-scope mechanical touches that materially matter,
- claiming compliance from memory rather than from recorded artifacts.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: scope, exclusions, compliance controls, and scope-drift budget,
- `canonical-sources.md`: when a source decision caused limited out-of-scope
  propagation,
- `decision-ledger.md`: when boundary posture changed because of a decision,
- `receipts/`: to show concrete touched surfaces and out-of-scope mechanical
  touches,
- scoped pages or sections: to confirm what was actually touched,
- audit outputs: for compliance checks and failures,
- other inputs: `.methodologies/clarity/status.md` permissions and operating
  scope.

### Update These Artifacts When

- `plan.md`: scope, exclusions, permissions understanding, or drift usage
  changes,
- `canonical-sources.md`: a bounded out-of-scope touch is required to preserve
  canonicality,
- `decision-ledger.md`: a boundary exception or re-scope decision is approved,
- `report.md`: summarize compliance posture and any deliberate exceptions,
- receipts: record touched surfaces, classification, and drift usage.

## Related Claim Types

- `coverage-propagation`
- `governance-ownership`
- `authority-basis`
- `verification-posture`
