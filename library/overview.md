# Clarity Library Overview

Presets map intended outcomes to actions.

## Agent Navigation

1. Start in this file to map intent to the closest preset class.
2. Open `presets/overview.md` for preset details (personas, checks,
   deliverables, and action defaults).
3. Open `actions/index.md` for tactical action expansion when preset actions are
   insufficient.
4. Record selected preset/resources in plan/report artifacts.

Agents should reference local canonical entries during runtime.

## Capability Map

Agent heuristic: match the intended outcome to the closest preset in
`presets/overview.md`.

Use preset classes to narrow selection quickly:

- Foundation (wiki integrity): structure, canonicality, terminology,
  traceability, and propagation consistency.
- Product and decision quality: requirements, risk, integration, migration, and
  policy controls.
- Scale and operations: onboarding, support, and cross-team handoffs.

### Foundation (wiki integrity)

- Unstructured notes, unclear structure ->
  `Unstructured notes -> structured, enriched wiki slice`
- Flat folder, hard to navigate -> `Flat folder -> navigable hierarchy`
- Duplicate/overlapping pages -> `Overlapping pages -> canonical source`
- Terms mean different things in different places ->
  `Terminology drift -> consistent language`
- Claims/decisions lack sources -> `Low traceability -> evidence-backed wiki`
- A targeted change may be partially propagated across docs ->
  `Targeted update -> propagation-consistent wiki`

### Product and decision quality

- Alternatives exist but decisions are implicit ->
  `Design exploration -> decision-ready`
- Goals exist but requirements are missing -> `Goals -> requirements`
- Risks are listed but unmanaged ->
  `Risk-heavy project wiki -> mitigated project wiki`
- Integration boundaries are unclear ->
  `Integration uncertainty -> interface-dependency explicit wiki`
- Policy/compliance pressure is high ->
  `Compliance pressure -> policy-controlled evidence-backed wiki`
- Migration planning is risky/ambiguous ->
  `Migration risk -> cutover-ready migration wiki`

### Scale and operations

- Onboarding flow is fragmented/hard to follow ->
  `Onboarding friction -> self-serve onboarding wiki`
- Support churn is high -> `Support churn -> triage-to-resolution support wiki`
- Cross-team transitions are unclear ->
  `Cross-team handoff gaps -> contract-driven handoff wiki`

## Extension Path

If no preset in `presets/overview.md` fits, select actions from
`actions/index.md` and propose a custom preset (name + personas +
core/conditional actions + deliverables + checks) for approval before applying
changes.

One way to compose a custom preset is to pick a dimension and start from these
actions:

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
  `.methodologies/clarity/status.md` when used

## Merge Resolution

Use this section in installed copies when multiple library sources are merged.
Document duplicate/conflict resolution and resulting canonical local entries.

## Multi-Library Selection Rule

When multiple local entries could satisfy one intent, select one canonical local
entry and record selection rationale in run artifacts.
