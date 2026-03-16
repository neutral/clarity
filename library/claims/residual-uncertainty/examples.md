# Examples

## Example Concrete Claim

- `The support escalation section still depends on an unresolved ownership
  question between SRE and platform engineering, so trust in the documented
  escalation path is limited until ownership is fixed in the decision ledger.`

## Example Supporting Observations

- The section now labels the unresolved ownership question explicitly.
- No fixed owner exists in the decision ledger.
- The rest of the support flow is documented, but escalation ownership remains
  conditional.

## Example Raw Artifacts

- labeled `Question` in the page
- `decision-ledger.md` open entry
- report open-questions section

## Example Verdict

- `supported` because the unresolved ownership question is explicit and the
  trust boundary on the escalation path is clearly stated.

## Example Open Question Or Follow-Up

- Release lead to assign escalation ownership before the next support wiki pass.

## Anti-Patterns

### Common Failures

- The pass silently fills unknowns instead of labeling them.
- The uncertainty is recorded but not tied to any trust boundary.
- Multiple unrelated open questions are bundled together.
- The pass leaves a consequential unresolved issue ownerless.

### Non-Examples

- Bad claim: `There may still be some unknowns.`
- Why it is bad: it does not say what is unknown or why it matters.

- Bad observation set: `We should revisit this later.`
- Why it is bad: it gives no condition, owner, or boundary for later trust.
