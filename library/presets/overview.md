# Clarity Preset Library

Presets (aka clarity presets) are outcome-focused configurations for improving a
project wiki. A preset defines the personas, core/conditional actions,
deliverables, and checks used when running a clarity pass against a scope.

Why presets matter: they convert a vague "improve this wiki" request into a
repeatable playbook with clear controls, so authors and agents do not need to
re-design the process every run.

The agent should select a preset automatically based on the intended outcome and
scope.

If no preset fits, the agent should propose a custom preset for approval before
applying changes.

## From intent to execution

Use presets as the bridge between high-level intent and low-level actions:

1. Intent says what outcome is needed.
2. Preset selects the default personas/actions/checks for that outcome.
3. Actions implement the changes inside scope.
4. Audit verifies both content quality and process compliance.

## How the agent selects a preset

1. Read the intended outcome and scope (from the intake section of `WORKFLOW.md`).
2. Select the best-fit preset below.
3. In the plan, start from the preset-defined personas, core actions, deliverables, and checks.
4. During execution, add conditional actions (and any additional actions) as triggered; record each addition and its trigger in the plan.
5. If no preset fits, propose a custom preset (name + personas + core/conditional actions + deliverables + checks) and wait for owner approval.
6. If the custom preset is reusable, add it to this library.

### Selection hints

- If you need to turn unstructured notes into a structured, enriched slice, use `Unstructured notes -> structured, enriched wiki slice`.
- If a folder is "flat" and hard to navigate, use `Flat folder -> navigable hierarchy`.
- If pages conflict or overlap, use `Overlapping pages -> canonical source`.
- If terms drift, use `Terminology drift -> consistent language`.
- If alternatives or tradeoffs are implicit, use `Design exploration -> decision-ready`.
- If requirements are missing, use `Goals -> requirements`.
- If risks dominate, use `Risk-heavy project wiki -> mitigated project wiki`.
- If traceability is weak, use `Low traceability -> evidence-backed wiki`.
- If a targeted change may be only partially propagated, use `Targeted update -> propagation-consistent wiki`.
- If integration points are unclear, use `Integration uncertainty -> interface-dependency explicit wiki`.
- If policy/compliance pressure is high, use `Compliance pressure -> policy-controlled evidence-backed wiki`.
- If migration planning is risky/ambiguous, use `Migration risk -> cutover-ready migration wiki`.
- If onboarding is fragmented or hard to follow, use `Onboarding friction -> self-serve onboarding wiki`.
- If support churn is high, use `Support churn -> triage-to-resolution support wiki`.
- If cross-team transitions are unclear, use `Cross-team handoff gaps -> contract-driven handoff wiki`.

### Preset classes

Use this classification to keep selection fast and predictable in larger wiki operations:

- Foundation (wiki integrity): structure, canonicality, terminology, traceability, and propagation consistency.
- Product and decision quality: requirements, risk, integration, migration, and policy-controlled decisions.
- Scale and operations: onboarding, support, and cross-team handoff reliability.

## Global rules (all pass runs)

### Personas

- Personas are defined by the selected preset (override only when explicitly needed).
- Each preset defines:
  - Think-as persona
  - Write-for persona
  - Audit persona(s)
  - Polish persona (recommended: `technical-editor`)
- For compliance-heavy multi-agent runs, also include a process-compliance audit persona (recommended: `process-compliance`).
- Persona intent is control-first:
  - Think-as controls the primary failure modes in scope.
  - Write-for is chosen by decision owner + required action (not prose style).
  - Audit personas challenge likely failure modes.
  - Process-compliance enforces workflow, traceability, and policy gates.
- In plan/report artifacts, record the persona control mapping (objective, prevented failures, must-answer set, and persona checks).

### Action selection model

- Actions are tactics; not strictly linear; pick based on triggers and checks.
- Core actions: the minimum action set defined by the selected preset.
- Conditional actions: additional actions to apply when specific triggers are observed.
- Expansion rule: the agent may add any action from the action library if:
  - it supports the intended outcome,
  - it is justified by a specific observed trigger, and
  - it is recorded in the plan as "Added action: X; Trigger: Y; Artifact: Z".

### Return-to-intake guardrail (avoid drift)

- Do not return to intake just to add a triggered action.
- Return to intake if a run parameter changes: scope/exclusions, intended outcome, audience/task, fixed decisions/canonical sources, or definition-of-done (deliverables/checks).

## Audit checks

Always include:

- General checks (all pass runs).
- The selected preset's checks.

### General checks (all pass runs)

- Anti-bleed: outputs do not mention personas or contain meta-role narration.
- Scope discipline: changes stay within scope plus bounded/mechanical second-order fixes (and those are recorded).
- Visible uncertainty: unknowns are labeled as `Assumption` / `Question` (not filled implicitly).
- Canonicality: avoid duplicating facts across pages; if overlap exists, pick a canonical source and cross-link.
- Link/rename hygiene: moved/renamed pages have links updated; navigation remains intact.
- Fixed decisions: do not contradict locked decisions; if conflicts appear, return to intake to confirm canonical sources.
- Change classification gate: substantive edits are classified as `cosmetic`, `structural`, `semantic`, or `decision-impacting`.
- Approval gate: `semantic` / `decision-impacting` edits include explicit owner approval records.
- Receipt completeness: one action receipt exists per applied action under `.methodologies/clarity/scratch/receipts/`.
- Scope-drift budget gate: out-of-scope mechanical changes stay within the approved budget; otherwise audit fails until intake is revisited and approved.
- Canonical source register hygiene: `.methodologies/clarity/scratch/canonical-sources.md` is updated when source authority changes.
- Locked/open ledger hygiene: `.methodologies/clarity/scratch/decision-ledger.md` is updated when decision posture changes.

## Preset library

Each preset maps a specific author need to a set of personas, actions,
deliverables, and checks.

Preset naming pattern:

- `Start state -> target clarity outcome`
- or `Author intent -> target clarity outcome`

### Preset list

#### Foundation (wiki integrity)

- [Unstructured notes -> structured, enriched wiki slice](unstructured-notes-structured-enriched-wiki-slice.md)
- [Flat folder -> navigable hierarchy](flat-folder-navigable-hierarchy.md)
- [Overlapping pages -> canonical source](overlapping-pages-canonical-source.md)
- [Terminology drift -> consistent language](terminology-drift-consistent-language.md)
- [Low traceability -> evidence-backed wiki](low-traceability-evidence-backed-wiki.md)
- [Targeted update -> propagation-consistent wiki](targeted-update-propagation-consistent-wiki.md)

#### Product and decision quality

- [Design exploration -> decision-ready](design-exploration-decision-ready.md)
- [Goals -> requirements](goals-requirements.md)
- [Risk-heavy project wiki -> mitigated project wiki](risk-heavy-project-wiki-mitigated.md)
- [Integration uncertainty -> interface-dependency explicit wiki](integration-uncertainty-interface-dependency-explicit-wiki.md)
- [Compliance pressure -> policy-controlled evidence-backed wiki](compliance-pressure-policy-controlled-evidence-backed-wiki.md)
- [Migration risk -> cutover-ready migration wiki](migration-risk-cutover-ready-migration-wiki.md)

#### Scale and operations

- [Onboarding friction -> self-serve onboarding wiki](onboarding-friction-self-serve-onboarding-wiki.md)
- [Support churn -> triage-to-resolution support wiki](support-churn-triage-to-resolution-support-wiki.md)
- [Cross-team handoff gaps -> contract-driven handoff wiki](cross-team-handoff-gaps-contract-driven-handoff-wiki.md)
