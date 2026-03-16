# Clarity Library Overview

This file is the runtime entrypoint for selecting library resources.

## Start Here

This file is authoritative for:

- routing from intended outcome to the right preset class
- deciding which library surface to open next
- handling multi-library selection at a high level

Use these next documents:

- `presets/overview.md`: preset catalog and preset selection model
- `actions/index.md`: action catalog and action expansion rule
- `claims/README.md`: claim catalog and claim-family rules
- `personas/README.md`: persona selection model and persona-family rules

## Path Context

Source repo:

- `library/overview.md`

Installed runtime:

- `.methodologies/clarity/library/overview.md`

## Agent Navigation

1. Start in this file to map intent to the closest preset class.
2. Open `presets/overview.md` for preset selection and leaf preset details.
3. Open `actions/index.md` when preset-defined actions are not enough.
4. Open `claims/README.md` to load the claim catalog for active trust
   questions.
5. Open `personas/README.md` when persona selection or interpretation needs
   clarification.
6. Record selected preset, actions, personas, and active claim types in plan,
   report, and evidence artifacts.

## Capability Map

Use preset classes to narrow selection quickly:

- Foundation: structure, canonicality, terminology, traceability, propagation
- Product and decision quality: requirements, risk, integration, migration,
  policy controls
- Scale and operations: onboarding, support, cross-team handoffs

### Foundation

- Unstructured notes or unclear structure ->
  `Unstructured notes -> structured, enriched wiki slice`
- Flat folder, hard to navigate -> `Flat folder -> navigable hierarchy`
- Duplicate or overlapping pages -> `Overlapping pages -> canonical source`
- Terms drift across docs -> `Terminology drift -> consistent language`
- Claims or decisions lack sources -> `Low traceability -> evidence-backed wiki`
- A targeted update may be partially propagated ->
  `Targeted update -> propagation-consistent wiki`

### Product And Decision Quality

- Alternatives exist but decisions are implicit ->
  `Design exploration -> decision-ready`
- Goals exist but requirements are missing -> `Goals -> requirements`
- Risks are listed but unmanaged ->
  `Risk-heavy project wiki -> mitigated project wiki`
- Integration boundaries are unclear ->
  `Integration uncertainty -> interface-dependency explicit wiki`
- Policy or compliance pressure is high ->
  `Compliance pressure -> policy-controlled evidence-backed wiki`
- Migration planning is risky or ambiguous ->
  `Migration risk -> cutover-ready migration wiki`

### Scale And Operations

- Onboarding flow is fragmented ->
  `Onboarding friction -> self-serve onboarding wiki`
- Support churn is high -> `Support churn -> triage-to-resolution support wiki`
- Cross-team transitions are unclear ->
  `Cross-team handoff gaps -> contract-driven handoff wiki`

## Custom Composition

If no preset in `presets/overview.md` fits:

1. Select the closest actions from `actions/index.md`.
2. Propose a custom preset for approval.
3. Once approved, record the custom preset in the plan before applying changes.

One starting point for custom composition:

- Problem framing: `define-problem-statement`, `capture-user-needs`,
  `define-success-criteria`
- Decisions: `document-decisions`, `capture-alternatives`,
  `document-tradeoffs`
- Requirements depth: `derive-requirements`, `define-workflows`,
  `define-interfaces`, `define-acceptance-criteria`
- Risk: `identify-risks`, `map-dependencies`, `add-mitigations`

## Library Sources

- `primary`: this Clarity source repo `library/`
- `additional`: installed-library merges tracked in
  `.methodologies/clarity/status.md`

## Merge Resolution

When multiple local entries could satisfy one intent, select one canonical
local entry and record the selection rationale in run artifacts.
