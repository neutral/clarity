# Examples

## Example Concrete Claim

- `Pass S2 stayed within the selected-paths scope for wiki/onboarding.md and
  its Goal and Questions sections, respected read-only status on adjacent
  architecture pages, and used one bounded second-order terminology fix in the
  linked glossary.`

## Example Supporting Observations

- `plan.md` defines `wiki/onboarding.md` Goal and Questions as the in-scope
  slice and allows bounded terminology fixes.
- `status.md` marks `wiki/glossary.md` as writable and architecture pages as
  read-only.
- Receipts show edits only to the scoped onboarding page and one glossary term
  alignment.

## Example Raw Artifacts

- `status.md`
- `plan.md` scope and compliance sections
- relevant action receipts

## Example Verdict

- `supported` because the touched surfaces match the declared scope and allowed
  second-order touch, and no disallowed paths were edited.

## Example Open Question Or Follow-Up

- Confirm whether future propagation to the architecture FAQ should remain out
  of scope or be approved as a separate pass.

## Anti-Patterns

### Common Failures

- The claim says “stayed in scope” without naming the scope.
- The evidence omits out-of-scope mechanical touches that materially matter.
- Read-only paths are consulted or edited without being reflected in the claim.
- The thread mixes compliance with approval or authority questions.

### Non-Examples

- Bad claim: `The pass respected boundaries.`
- Why it is bad: it does not say which boundaries or how a later reader can
  inspect compliance.

- Bad observation set: `Only small edits were made.`
- Why it is bad: small edits can still violate scope or permissions.
