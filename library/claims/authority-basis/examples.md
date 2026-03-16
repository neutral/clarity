# Examples

## Example Concrete Claim

- `For the term "cutover readiness", this pass treated the migration overview as
  the authoritative definition and aligned conflicting usage in the support and
  rollout pages against that definition.`

## Example Supporting Observations

- The migration overview already carried the fixed definition used in prior
  decisions.
- Support docs used the same term to mean post-cutover verification instead of
  pre-cutover readiness.
- Receipts show terminology alignment and cross-links back to the migration
  overview.

## Example Raw Artifacts

- `canonical-sources.md` entry for migration overview
- `decision-ledger.md` entry that locks the rollout terminology
- terminology-alignment and canonicalization receipts

## Example Verdict

- `supported` because the authority basis is explicit and the conflicting
  surfaces were aligned against it.

## Example Open Question Or Follow-Up

- Decide whether release-notes language should also inherit the migration
  overview definition in a later pass.

## Anti-Patterns

### Common Failures

- The claim says something is canonical without naming the canonical source.
- The evidence hides unresolved conflict under a forced wording choice.
- The thread mixes authority basis with approval or ownership decisions.
- The run aligns pages to a source that is itself unstable or contradicted.

### Non-Examples

- Bad claim: `The docs now use the right definition.`
- Why it is bad: it does not say whose definition is authoritative or why.

- Bad observation set: `We standardized the wording across files.`
- Why it is bad: standardization alone does not show the authority basis for the
  chosen wording.
