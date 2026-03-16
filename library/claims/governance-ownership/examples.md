# Examples

## Example Concrete Claim

- `The new rollback decision section was classified as decision-impacting,
  backed by explicit owner approval in the linked ticket, and follow-up on the
  unresolved cutover metric remains assigned to the release lead.`

## Example Supporting Observations

- The receipt for the decision section marks the change as decision-impacting.
- The linked ticket includes explicit owner approval for publishing the rollback
  posture.
- The unresolved cutover metric is recorded as open with the release lead as
  owner.

## Example Raw Artifacts

- relevant receipt
- approval ticket or sign-off note
- decision-ledger entry

## Example Verdict

- `supported` because the change classification, approval evidence, and follow-
  up ownership are all explicit and inspectable.

## Example Open Question Or Follow-Up

- Confirm whether security review is also required before the rollback section
  can be treated as fixed in the next pass.

## Anti-Patterns

### Common Failures

- The claim says “approved” without linking approval evidence.
- Consequential edits are left as ordinary semantic changes with no explicit
  classification.
- Deferred work is recorded as open with no owner.
- The thread mixes source authority with approval posture.

### Non-Examples

- Bad claim: `The change was signed off.`
- Why it is bad: it does not say what change, by whom, or where the sign-off is
  recorded.

- Bad observation set: `Everyone agreed this was fine.`
- Why it is bad: it is not inspectable approval evidence.
