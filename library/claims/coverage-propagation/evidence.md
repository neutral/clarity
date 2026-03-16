# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the topic or change being propagated.
- Name the surface set and distinguish checked, updated, and untouched surfaces.

## Methodology References

- Record the claim type folder path.
- Link relevant `plan.md` sections and receipts.
- Link canonical-source or decision-ledger entries when they define the
  propagation boundary.

## Method Or Context

- Explain how the propagation set was determined.
- Record whether the pass used a checklist, matrix, link sweep, term sweep, or
  manual comparison.
- Note why any surface was deliberately excluded or deferred.

## Observations

- Record the full surface set considered material.
- Record which surfaces were checked, which changed, and which stayed
  intentionally untouched.
- Record any discovered gaps, stale pages, or downstream inconsistencies.
- Record evidence that the untouched set was a deliberate choice rather than an
  omission.

## Raw Artifacts

- Reference receipts, propagation matrices, or page inventories.
- Reference before and after excerpts for key changed surfaces.
- Reference audit notes or cross-link/terminology verification outputs.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the propagation set is explicit and the checked
  set supports the claimed spread.
- Note the limiting factor when the checked set is partial or uncertain.

## Open Questions Or Follow-Ups

- Record surfaces that likely need later propagation work.
- Record uncertainty about whether the surface set is complete.
- Include owners when deferred propagation needs a separate pass.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the material surface set is explicit and the claimed checked,
  updated, and untouched surfaces are inspectable.
- Not enough when: the pass updated multiple pages but never states which set
  was expected to align.

### mixed

- Use when: the main propagation set is covered but one or more secondary
  surfaces remain deferred or only partially checked.
- Not enough when: the unchecked surfaces could materially change trust in the
  result.

### incomplete

- Use when: propagation likely matters, but the pass does not yet show enough
  evidence about the surface set or checked set.
- Not enough when: known stale or conflicting surfaces were left unaddressed.

### open

- Use when: propagation checking is underway or deferred pending a later pass.
- Not enough when: the run claims consistency while still leaving the
  propagation set unresolved.

### failed

- Use when: materially related surfaces were left stale or conflicting while the
  pass presents the change as propagated.
- Not enough when: only optional or clearly out-of-scope surfaces remain.

## Evidence Thread Rules

Create a new evidence item when:

- a different topic has a different propagation set,
- the checked surface set becomes too large or unrelated for one thread,
- a separate stale-cluster needs independent follow-up.

### Enrich An Existing Evidence Item When

- more surfaces are checked within the same propagation set,
- more receipts strengthen the same propagation claim,
- the verdict changes as gaps are closed.

### Do Not Mix

- propagation coverage with the transformation itself,
- unrelated surface sets,
- propagation gaps with approval or ownership evidence.

### Close Out When

- the material surface set is explicit,
- checked, updated, and untouched surfaces are recorded,
- the verdict reflects remaining propagation risk.
