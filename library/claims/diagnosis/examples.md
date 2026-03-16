# Examples

## Example Concrete Claim

- `The onboarding troubleshooting page had duplicated and conflicting guidance
  for VPN setup, evidenced by two different step orders and contradictory access
  prerequisites, and that conflict justified this pass.`

## Example Supporting Observations

- Two sections instruct readers to set up VPN at different points in the flow.
- One section says SSO access is required first; the other says VPN can be set
  up without it.
- New hires would not know which path is authoritative.

## Example Raw Artifacts

- before-state page excerpts
- baseline scan notes in `plan.md`
- follow-on canonicalization receipt

## Example Verdict

- `supported` because the conflicting steps and prerequisites are directly
  observable in the source page.

## Example Open Question Or Follow-Up

- Confirm whether the same conflict also exists in the Mac-specific setup page.

## Anti-Patterns

### Common Failures

- The claim says “readability was poor” without concrete evidence.
- The diagnosis already assumes the fix, such as “the page needed splitting.”
- Multiple unrelated issues are grouped into one diagnostic claim.
- User frustration is recorded without tying it back to observable wiki facts.

### Non-Examples

- Bad claim: `The page needed a rewrite.`
- Why it is bad: it states a solution, not a supported diagnosis.

- Bad observation set: `It felt messy.`
- Why it is bad: it does not preserve the concrete symptoms a later reader can
  inspect.
