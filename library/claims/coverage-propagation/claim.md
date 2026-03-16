# Claim Type

Claim type name: `coverage-propagation`
Purpose: Preserve which related surfaces were expected to align, which were
checked, which were updated, and which were intentionally left untouched.
Primary trust question: Can a later reader trust the claimed spread of this
change across the surfaces that mattered?
Default evidence kind: propagation-coverage proof thread
Why this claim matters: Documentation work often fails through partial spread.
The final state of one page does not show whether neighboring surfaces were
examined or deliberately deferred.

## Applies When

Use this claim type when:

- a change potentially affects multiple pages, sections, definitions, or linked
  surfaces,
- the pass claims propagation completeness or intentional boundedness,
- later readers need to know what was checked beyond the edited page itself.

## Material Triggers

- terminology or canonical-source changes may affect multiple pages,
- targeted updates risk partial propagation,
- a pass cross-links, renames, or re-routes readers across multiple surfaces,
- audit checks ask whether related surfaces remain aligned.

## Use A Different Claim Type When

- the question is which move was applied to one surface; use `transformation`,
- the question is whether the pass stayed in bounds; use
  `boundary-compliance`,
- the question is whether checks passed overall; use `verification-posture`.

## Split Or Escalate When

- distinct propagation sets exist for different topics,
- one surface set is fully checked while another remains only suspected,
- a propagation gap is significant enough to warrant a separate follow-up pass.

## Claim Sentence Template

- `<change or scoped topic> was expected to align across <surface set>; <checked
  surfaces> were reviewed, <updated surfaces> were changed, and <untouched
  surfaces> were intentionally left as-is for <reason>.`

## A Good Concrete Claim Includes

- the change or topic being propagated,
- the surface set that mattered,
- which surfaces were checked,
- which surfaces changed versus remained untouched,
- the reason untouched surfaces stayed untouched.

## Avoid

- saying “fully propagated” without naming the surface set,
- implying unreviewed surfaces were reviewed,
- folding scope compliance into propagation,
- mixing separate propagation sets in one claim.

## Artifact Integration

Use these Clarity artifacts when working this claim type.

### Required Inputs

- `plan.md`: scope, second-order-fix rules, and changes summary,
- `canonical-sources.md`: when propagation follows a canonical source,
- `decision-ledger.md`: when propagation stops at a decision boundary,
- `receipts/`: touched surfaces and verification actions,
- scoped pages or sections: edited and checked surfaces,
- audit outputs: consistency, canonicality, and propagation checks,
- other inputs: ad hoc propagation matrices or page inventories when needed.

### Update These Artifacts When

- `plan.md`: the expected propagation set changes,
- `canonical-sources.md`: propagation changes canonical routing,
- `decision-ledger.md`: a decision justifies why a surface stays untouched,
- `report.md`: summarize checked, updated, and deferred surfaces,
- receipts: record the checked set and any propagation fixes.

## Related Claim Types

- `transformation`
- `boundary-compliance`
- `verification-posture`
- `authority-basis`
