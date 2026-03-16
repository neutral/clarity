# Examples

## Example Concrete Claim

- `The onboarding-pass result was checked against the selected general,
  preset, and process-compliance audit bar; structure, terminology consistency,
  traceability, receipt completeness, and scope compliance passed, while no
  separate escalation-path review was run because that section remained out of
  scope.`

## Example Supporting Observations

- `plan.md` lists the selected audit bar.
- Audit notes show structure, terminology, traceability, and compliance checks
  executed with passing results.
- The escalation-path section is explicitly excluded from the current scope.

## Example Raw Artifacts

- audit notes
- `plan.md` audit bar
- report compliance summary

## Example Verification Verdict

- `supported` because the executed checks match the planned audit bar for the
  scoped result and the remaining blind spot is explicitly bounded.

## Example Open Question Or Follow-Up

- Add a dedicated escalation-path review in the next pass once that section
  enters scope.

## Anti-Patterns

### Common Failures

- The claim says “passed audit” without saying what the audit bar was.
- Intended checks are reported as completed checks.
- Blind spots are omitted, causing over-trust.
- The thread mixes audit evidence with approval or source authority claims.

### Non-Examples

- Bad claim: `The pass was thoroughly checked.`
- Why it is bad: it does not preserve what was actually checked.

- Bad observation set: `Everything looked good on review.`
- Why it is bad: it does not record specific checks, standards, or outcomes.
