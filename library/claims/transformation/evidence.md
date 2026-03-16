# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the conceptual move and the diagnosed problem it addresses.
- State the limit of the move if it was intentionally partial.

## Methodology References

- Record the claim type folder path.
- Link the relevant action or preset in `plan.md`.
- Link receipts for the applied action.
- Link any canonical-source or decision-ledger updates caused by the move.

## Method Or Context

- Explain why this move was chosen over nearby alternatives.
- Record whether it was a preset-default move, a triggered conditional move, or
  an added action.
- Note any tradeoff or guardrail that shaped how the move was applied.

## Observations

- Record the before and after state that shows the conceptual move.
- Record which structural or semantic pattern changed.
- Record partial application or deliberate deferral when relevant.
- Separate the existence of the problem from the move taken to address it.

## Raw Artifacts

- Reference receipts for the applied move.
- Reference before and after page excerpts, folder structures, or cross-link
  maps.
- Reference updated registers or ledgers when the move changed them.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the claimed conceptual move is visible and
  inspectable in the resulting artifacts.
- Note the limiting factor when the move is only partial or weakly evidenced.

## Open Questions Or Follow-Ups

- Record follow-up when a complementary move is still needed.
- Record any unresolved tradeoff created by the transformation.
- Include revisit triggers when the move should be widened or reversed.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the conceptual move is explicit, inspectable, and clearly addresses
  the diagnosed problem in the scoped area.
- Not enough when: edits occurred but the claimed move cannot be distinguished
  from generic cleanup.

### mixed

- Use when: the move is real but only partially applied, or one important
  consequence remains unresolved.
- Not enough when: the move itself is still ambiguous.

### incomplete

- Use when: the intended move is known but not enough evidence shows how it was
  actually applied.
- Not enough when: the move was applied in a contradictory or harmful way.

### open

- Use when: the transformation is still in progress or awaiting a related
  decision.
- Not enough when: the pass already treats the move as complete.

### failed

- Use when: the claimed move was not actually applied, or the resulting change
  contradicts the claimed transformation.
- Not enough when: the move is merely partial but still directionally valid.

## Evidence Thread Rules

Create a new evidence item when:

- a different conceptual move needs separate support,
- the same diagnosis is addressed by independent moves with different risk
  posture,
- one thread would otherwise mix the move with propagation or approval claims.

### Enrich An Existing Evidence Item When

- more evidence shows the same move being applied across the same scoped area,
- the move is refined or completed without changing its nature,
- the same move gains clearer before and after support.

### Do Not Mix

- the move itself with whether all expected surfaces were updated,
- the move with approval or ownership questions,
- multiple distinct transformations that need different verdicts.

### Close Out When

- the move is inspectable in the resulting artifacts,
- its relation to the diagnosis is recorded,
- remaining partiality or follow-up is explicit.
