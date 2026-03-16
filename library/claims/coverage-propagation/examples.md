# Examples

## Example Concrete Claim

- `The glossary rename from "cutover gate" to "cutover readiness" was checked
  across the migration hub, rollout checklist, support playbook, and release FAQ;
  the first three were updated, while archived release notes were intentionally
  left untouched because they are out of the live operational path.`

## Example Supporting Observations

- The migration hub, checklist, and support playbook all contained the renamed
  term and were updated.
- The release FAQ linked to the old term and was updated to the new glossary
  target.
- Archived release notes were identified but explicitly deferred.

## Example Raw Artifacts

- terminology propagation checklist
- relevant receipts
- before and after page excerpts

## Example Verdict

- `supported` because the propagation set is explicit and the checked, updated,
  and intentionally deferred surfaces are all inspectable.

## Example Open Question Or Follow-Up

- Decide whether archived notes should get a retrospective terminology note in a
  separate housekeeping pass.

## Anti-Patterns

### Common Failures

- The claim says “propagated everywhere” without naming where “everywhere” is.
- Untouched surfaces are omitted rather than explicitly deferred.
- The pass conflates propagation completeness with scope compliance.
- One thread mixes separate propagation sets for different topics.

### Non-Examples

- Bad claim: `The change was propagated across the docs.`
- Why it is bad: a later reader cannot inspect which docs were supposed to be
  included.

- Bad observation set: `I updated the main pages.`
- Why it is bad: it does not establish whether secondary but material surfaces
  were checked.
