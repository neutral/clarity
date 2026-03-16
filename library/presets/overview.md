# Clarity Preset Library

This file is authoritative for preset selection, preset-family structure, and
the preset catalog.

## Start Here

Use this file when you need to answer:

- which preset best matches the intended outcome
- what each preset leaf file must contain
- when to propose a custom preset

Use these next documents:

- one leaf preset file for personas, actions, deliverables, and checks
- `../actions/index.md` for the action expansion rule
- `../personas/README.md` for persona selection model details
- `../../methodology/WORKFLOW.md` for run-level gates and audit rules

## Path Context

Source repo:

- `library/presets/overview.md`

Installed runtime:

- `.methodologies/clarity/library/presets/overview.md`

## How To Select A Preset

1. Read intended outcome and scope from the pass intake.
2. Choose the closest preset class below.
3. Open the best-fit leaf preset.
4. Use the leaf preset's personas, core actions, conditional actions,
   deliverables, and checks as the starting bundle for the pass.
5. If the preset is close but incomplete, use the action expansion rule from
   `../actions/index.md`.
6. If no preset fits, propose a custom preset for approval before applying
   changes.

## Preset Family Structure

Each preset file should keep this order:

- `Author need`
- `Start`
- `Target`
- `Personas`
- `Core actions`
- `Conditional actions`
- `Deliverables`
- `Checks`

Optional metadata such as `Aliases` may appear near the top, but it should not
interrupt the core preset flow.

## Selection Hints

- Unstructured notes -> `Unstructured notes -> structured, enriched wiki slice`
- Flat folder -> `Flat folder -> navigable hierarchy`
- Overlapping pages -> `Overlapping pages -> canonical source`
- Terminology drift -> `Terminology drift -> consistent language`
- Design exploration -> `Design exploration -> decision-ready`
- Goals to requirements -> `Goals -> requirements`
- Risk-heavy docs -> `Risk-heavy project wiki -> mitigated project wiki`
- Low traceability -> `Low traceability -> evidence-backed wiki`
- Propagation concerns -> `Targeted update -> propagation-consistent wiki`
- Integration ambiguity ->
  `Integration uncertainty -> interface-dependency explicit wiki`
- Compliance pressure ->
  `Compliance pressure -> policy-controlled evidence-backed wiki`
- Migration ambiguity -> `Migration risk -> cutover-ready migration wiki`
- Onboarding friction -> `Onboarding friction -> self-serve onboarding wiki`
- Support churn -> `Support churn -> triage-to-resolution support wiki`
- Cross-team handoff gaps ->
  `Cross-team handoff gaps -> contract-driven handoff wiki`

## Preset Classes

- Foundation: structure, canonicality, terminology, traceability, propagation
- Product and decision quality: requirements, risk, integration, migration,
  policy controls
- Scale and operations: onboarding, support, cross-team handoffs

## Custom Presets

If no preset fits, propose a custom preset with:

- name
- personas
- core actions
- conditional actions
- deliverables
- checks

Wait for owner approval before applying a custom preset. If it proves reusable,
add it to this library later.

## Preset Catalog

### Foundation

- [Unstructured notes -> structured, enriched wiki slice](unstructured-notes-structured-enriched-wiki-slice.md)
- [Flat folder -> navigable hierarchy](flat-folder-navigable-hierarchy.md)
- [Overlapping pages -> canonical source](overlapping-pages-canonical-source.md)
- [Terminology drift -> consistent language](terminology-drift-consistent-language.md)
- [Low traceability -> evidence-backed wiki](low-traceability-evidence-backed-wiki.md)
- [Targeted update -> propagation-consistent wiki](targeted-update-propagation-consistent-wiki.md)

### Product And Decision Quality

- [Design exploration -> decision-ready](design-exploration-decision-ready.md)
- [Goals -> requirements](goals-requirements.md)
- [Risk-heavy project wiki -> mitigated project wiki](risk-heavy-project-wiki-mitigated.md)
- [Integration uncertainty -> interface-dependency explicit wiki](integration-uncertainty-interface-dependency-explicit-wiki.md)
- [Compliance pressure -> policy-controlled evidence-backed wiki](compliance-pressure-policy-controlled-evidence-backed-wiki.md)
- [Migration risk -> cutover-ready migration wiki](migration-risk-cutover-ready-migration-wiki.md)

### Scale And Operations

- [Onboarding friction -> self-serve onboarding wiki](onboarding-friction-self-serve-onboarding-wiki.md)
- [Support churn -> triage-to-resolution support wiki](support-churn-triage-to-resolution-support-wiki.md)
- [Cross-team handoff gaps -> contract-driven handoff wiki](cross-team-handoff-gaps-contract-driven-handoff-wiki.md)
