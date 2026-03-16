# Clarity Claim Types

This file is authoritative for the claim catalog and the claim-family starter
rules.

## Start Here

Use this file when you need to answer:

- which claim types exist
- what files each claim type folder must contain
- which claim types are baseline versus conditional

Use these next documents:

- one claim type folder for concrete claim and evidence rules
- `../../methodology/WORKFLOW.md` for when baseline claims are opened
- `../../methodology/templates/claims/README.md` for the source template shape

## Path Context

Source repo:

- `library/claims/README.md`

Installed runtime:

- `.methodologies/clarity/library/claims/README.md`
- evidence items under `.methodologies/clarity/scratch/evidence/<pass-id>/`

## Claim Family Structure

- each claim type lives in `library/claims/<claim-type-name>/`
- `<claim-type-name>` must be unique kebab-case and is the canonical claim type
  name
- use `methodology/templates/claims/claim-type-template/` as the starter shape
  for new claim types

Required files:

- `claim.md`: purpose, applicability, trust question, concrete claim shape,
  artifact integration, and related claim types
- `evidence.md`: field-by-field evidence capture rules, verdict guidance, and
  evidence thread rules
- `examples.md`: example concrete claims, observations, verdicts, and
  anti-patterns

## Core Claim Set

Clarity uses this shared core claim set:

- `intent-target`: why the pass exists, for whom, and what success means
- `boundary-compliance`: scope, permissions, exclusions, and bounded
  second-order-fix compliance
- `authority-basis`: which sources, definitions, and prior decisions were
  treated as authoritative
- `verification-posture`: what checks were run, against what bar, with what
  results and blind spots
- `governance-ownership`: change classification, approvals, and ownership of
  consequential follow-up
- `residual-uncertainty`: assumptions, open questions, unresolved conflicts,
  and revisit conditions that remain

## Clarity Extension Claim Set

Clarity adds these methodology-specific extension claims:

- `diagnosis`: the concrete wiki problems that justified the pass
- `transformation`: the conceptual moves applied to address the diagnosis
- `coverage-propagation`: which related surfaces were checked, updated, or
  intentionally left untouched

## Baseline Claim Set

`WORKFLOW.md` uses these baseline claim types in every pass:

- `intent-target`
- `boundary-compliance`
- `verification-posture`

Other claim types activate when their trigger conditions are materially present
in the run.

## Runtime Use

1. Match the current trust-relevant assertion to a claim type folder.
2. Use `claim.md` to state the concrete claim and check applicability.
3. Use `evidence.md` to capture and maintain the supporting evidence thread.
4. Store evidence items under
   `.methodologies/clarity/scratch/evidence/<pass-id>/`.
5. Use `examples.md` to calibrate examples and avoid common anti-patterns.
