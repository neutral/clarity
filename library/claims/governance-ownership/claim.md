# Claim Type

Claim type name: `governance-ownership`
Purpose: Preserve how consequential edits were classified, approved, deferred,
or assigned to explicit owners.
Primary trust question: Can a later reader trust the authority and ownership
posture around high-impact changes in this pass?
Default evidence kind: governance-and-ownership proof thread
Why this claim matters: The final wiki state does not show whether meaning
changes had approval, whether decision-impacting work was properly handled, or
who owns the next consequential follow-up.

## Applies When

Use this claim type when:

- the pass classifies changes as `semantic` or `decision-impacting`,
- approval gates or owner follow-up matter,
- later trust depends on knowing who authorized or owns a consequential choice.

## Material Triggers

- receipts classify a change as `semantic` or `decision-impacting`,
- approval evidence is required,
- the run defers a consequential question to a named owner,
- the decision ledger records a newly fixed, reopened, or still-open posture.

## Use A Different Claim Type When

- the question is which source was authoritative; use `authority-basis`,
- the question is whether the pass stayed in scope; use
  `boundary-compliance`,
- the question is what uncertainty remains when no owner is yet assigned; use
  `residual-uncertainty`.

## Split Or Escalate When

- multiple independent approvals are needed,
- one ownership conflict cannot be resolved in the same thread,
- approval posture and owner follow-up become distinct issues.

## Claim Sentence Template

- `<change or decision area> was classified as <change class>, supported by
  <approval evidence or owner assignment>, and follow-up ownership rests with
  <owner or deferred posture>.`

## A Good Concrete Claim Includes

- the consequential change or decision area,
- its change classification,
- the approval evidence or explicit reason approval was not required,
- the owner of any deferred follow-up,
- the boundary of the governance claim.

## Avoid

- treating source authority as approval,
- omitting owner assignment for deferred consequential work,
- saying “approved” without pointing to the approval evidence,
- mixing routine edits with high-impact governance posture.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: compliance controls, classification policy, and approval policy,
- `canonical-sources.md`: when governance depends on source authority,
- `decision-ledger.md`: open and locked decision posture,
- `receipts/`: change classification and approval evidence,
- scoped pages or sections: the consequential edits or deferred areas,
- audit outputs: compliance checks for classification and approval,
- other inputs: explicit owner approvals, comments, tickets, or sign-off notes.

### Update These Artifacts When

- `plan.md`: governance controls or approval requirements change,
- `canonical-sources.md`: source authority is used to justify governance
  handling,
- `decision-ledger.md`: decisions become fixed, reopened, or assigned,
- `report.md`: summarize governance posture and owner follow-up,
- receipts: capture classification, approval evidence, and ownership notes.

## Related Claim Types

- `boundary-compliance`
- `authority-basis`
- `verification-posture`
- `residual-uncertainty`
