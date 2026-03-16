# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the audit bar, checks run, result summary, and blind spots.
- Keep the claim about verification posture, not about the content alone.

## Methodology References

- Record the claim type folder path.
- Link the audit bar in `plan.md`.
- Link relevant audit notes, receipts, and report sections.
- Link any source or decision references that the checks depended on.

## Method Or Context

- Explain how the audit bar was selected.
- Record whether the checks were content, process-compliance, or both.
- Note any check that was intentionally skipped and why.

## Observations

- Record the checks actually run and their outcomes.
- Record failures, mixed results, or blind spots.
- Record the most important limitation on trust remaining after audit.
- Distinguish executed checks from merely intended checks.

## Raw Artifacts

- Reference audit notes, checklists, or receipt-local checks.
- Reference report sections that summarize results.
- Reference source/decision artifacts when traceability or consistency checks
  depend on them.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on whether the executed checks support the claimed trust
  posture.
- Note the limiting factor when required checks are missing or partial.

## Open Questions Or Follow-Ups

- Record checks that need rerun or follow-up.
- Record blind spots that should shape later trust in the result.
- Include owners for failed or deferred checks when known.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the required checks for the scoped result were run and their results
  support the claimed trust posture, with blind spots explicitly bounded.
- Not enough when: checks were listed in the plan but not shown as executed.

### mixed

- Use when: some checks support the result but failures, skipped checks, or
  material blind spots remain.
- Not enough when: one critical required check failed in a way that invalidates
  the trust posture.

### incomplete

- Use when: the audit bar exists but not enough checking has been recorded yet
  to justify later trust.
- Not enough when: the run already presents the result as fully verified.

### open

- Use when: audit is still in progress or a check is waiting on prerequisites.
- Not enough when: the pass is closed while verification is still materially
  unresolved.

### failed

- Use when: required checks failed or were omitted in a way that blocks trust in
  the claimed result.
- Not enough when: only optional checks remain unrun.

## Evidence Thread Rules

Create a new evidence item when:

- a distinct audit bar needs separate support,
- content checks and process-compliance checks need independent verdicts,
- one critical failed check needs isolated handling.

### Enrich An Existing Evidence Item When

- more checks are run against the same audit bar,
- failed checks are resolved and the verdict is updated,
- blind spots are narrowed for the same scoped result.

### Do Not Mix

- verification posture with approval evidence,
- checks for unrelated scoped results,
- check execution with residual uncertainty that is not audit-derived.

### Close Out When

- executed checks are inspectable against the planned audit bar,
- blind spots are explicit,
- the verdict reflects the final verification posture for the run.
