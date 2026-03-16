# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the consequential change area, its classification, and the approval or
  ownership posture.
- Include any deferred follow-up owner or explicit lack of approval.

## Methodology References

- Record the claim type folder path.
- Link relevant `plan.md` compliance-control sections.
- Link receipts with classification and approval evidence.
- Link `decision-ledger.md` when ownership or posture is tracked there.

## Method Or Context

- Explain why governance or ownership attention was needed.
- Record how the change was classified and by whom approval or ownership was
  established.
- Note whether the claim is about approval, owner assignment, or both.

## Observations

- Record the classified change and where it occurred.
- Record the approval evidence, explicit owner assignment, or deferred posture.
- Record any governance gap, such as pending approval or unresolved ownership.
- Distinguish observed evidence from expected but missing evidence.

## Raw Artifacts

- Reference receipts, comments, tickets, sign-off notes, or other approval
  artifacts.
- Reference decision-ledger entries for locked or open posture.
- Reference report or plan sections that summarize governance controls.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the consequential change is properly classified
  and backed by approval or ownership evidence.
- Note the limiting factor when approval or ownership remains partial.

## Open Questions Or Follow-Ups

- Record pending approvals or unresolved owner assignments.
- Record where escalation is needed if ownership is contested.
- Include deadlines or revisit triggers when known.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: consequential changes are correctly classified and backed by
  inspectable approval or explicit owner assignment as required.
- Not enough when: the pass implies approval or ownership without recording it.

### mixed

- Use when: governance posture is mostly explicit but one approval, assignment,
  or classification remains weak or partial.
- Not enough when: a required approval is simply missing.

### incomplete

- Use when: a consequential change is known but the evidence is not yet enough
  to show proper governance handling.
- Not enough when: the pass has already finalized the change without required
  approval.

### open

- Use when: approval or ownership is still pending and the pass records that
  openly.
- Not enough when: the run behaves as if approval is complete.

### failed

- Use when: a required approval is missing, classification is materially wrong,
  or consequential follow-up has no owner.
- Not enough when: only a minor clerical owner note is missing while governance
  posture is otherwise explicit.

## Evidence Thread Rules

Create a new evidence item when:

- a separate consequential change needs separate approval posture,
- ownership conflict becomes independent from approval evidence,
- one thread would otherwise mix unrelated governance questions.

### Enrich An Existing Evidence Item When

- more approval evidence is added for the same change,
- owner assignment is clarified for the same deferred area,
- the verdict changes as governance posture becomes explicit.

### Do Not Mix

- governance evidence with source authority evidence,
- unrelated approvals,
- general uncertainty that has no owner or approval posture attached.

### Close Out When

- classification, approval, and ownership posture are inspectable,
- pending gaps are explicit,
- the verdict reflects the final governance state for the run.
