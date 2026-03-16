# Claim Type

Claim type name: `verification-posture`
Purpose: Preserve what checks were run, against what audit bar, with what
results, blind spots, and unresolved limitations.
Primary trust question: Can a later reader trust the verification posture of
this pass rather than assuming completion implies full proof?
Default evidence kind: verification-posture proof thread
Why this claim matters: A final “done” state does not preserve the actual
boundary of trust. Later readers need to know what was checked and what was not.

## Applies When

Use this claim type when:

- the pass defines an audit bar,
- checks are run or skipped,
- later trust depends on knowing the difference between verified and unverified
  aspects of the result.

## Material Triggers

- the plan records general, preset, persona, or process-compliance checks,
- audit produces pass, fail, or mixed results,
- a blind spot or skipped check materially limits trust in the output.

## Use A Different Claim Type When

- the question is whether edits stayed inside boundaries; use
  `boundary-compliance`,
- the question is whether a decision was approved; use
  `governance-ownership`,
- the question is whether unresolved assumptions remain; use
  `residual-uncertainty`.

## Split Or Escalate When

- distinct audit bars need independent treatment,
- one required check fails and demands its own follow-up thread,
- content quality and process-compliance posture diverge enough to need
  separate claims.

## Claim Sentence Template

- `<pass or scoped result> was checked against <audit bar>; <checks run>
  produced <result summary>, and <blind spots or limits> remain.`

## A Good Concrete Claim Includes

- the scoped result being checked,
- the audit bar or check set,
- the checks actually run,
- the results that matter,
- the remaining blind spots or skipped checks.

## Avoid

- saying “audited” without naming the audit bar,
- treating completion as proof,
- hiding skipped checks or known blind spots,
- mixing governance approval with audit evidence.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: audit bar and persona-based checks,
- `canonical-sources.md`: when checks verify traceability against sources,
- `decision-ledger.md`: when check expectations depend on fixed decisions,
- `receipts/`: action outputs and local checks,
- scoped pages or sections: the actual result being checked,
- audit outputs: manual review notes and compliance checks,
- other inputs: any external validation artifacts used by the run.

### Update These Artifacts When

- `plan.md`: checks are added, removed, or clarified,
- `canonical-sources.md`: traceability checks reveal source gaps,
- `decision-ledger.md`: a decision changes the audit bar,
- `report.md`: summarize checks run, results, and blind spots,
- receipts: record check results where they are action-local.

## Related Claim Types

- `boundary-compliance`
- `coverage-propagation`
- `governance-ownership`
- `residual-uncertainty`
