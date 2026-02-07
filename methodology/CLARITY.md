# Clarity

Clarity is a flexible, progressive technique for enhancing a **project wiki**: a
structured set of pages (files), headings, labels, definitions, and cross-links that
collectively represent the project. Each pass targets a
slice of the wiki (pages/sections/labels), and the agent may:

- Restructure the wiki hierarchy so the same information is easier to find and
  interpret (outlines, headings, canonical pages, cross-links).
- Deepen a chosen dimension (problem framing, decisions, requirements, risk, etc.)
  by adding missing information where it belongs in the existing structure.
- Strengthen scanability and precision (labels, definitions, explicit scope, fewer
  ambiguities).

## Read This Top-Down (High Level -> Fine Detail)

Use this reading order to understand Clarity quickly:

1. `CLARITY.md` (this file): model, principles, control knobs, and outcomes.
2. `WORKFLOW.md`: execution timeline (intake -> plan -> execute -> audit -> polish -> report).
3. `presets/overview.md`: outcome-specific playbooks (which actions/personas/checks to use).
4. `actions/index.md` + action files: tactical units and class-specific behavior.
5. `LABELS.md`: semantic consistency model (section-default inference + taxonomy).
6. `templates/`: runtime artifacts for planning, compliance, and reporting.

This order mirrors how runs operate in practice: start from intent, then choose
controls, then execute details.

## Control Knobs (Why The Layers Exist)

Clarity is designed for wiki updates where many agents can otherwise drift. Each
layer is a control knob that removes a specific source of variance:

- Scope knob (`plan.md`): limits where edits can occur so passes stay reviewable.
- Preset knob (`presets/overview.md`): maps outcome intent to a known action/check set.
- Persona knob (`personas/`): controls failure modes and required questions, not writing style.
- Action knob (`actions/`): applies repeatable tactics with deterministic/structural/editorial strategies.
- Label knob (`LABELS.md`): makes intent explicit without clutter through section-default inference.
- Compliance knobs (`plan.md` controls): scope-drift budget, change classes, approval gates, and receipts.
- Audit knob (`WORKFLOW.md` + presets): enforces both content quality and process compliance before finalization.

Together these knobs make updates safer and faster: less rework, clearer handoffs,
and predictable outcomes across different agents.

## Methodology Design Principles (Why This Shape)

Clarity is a methodology for evolving a project wiki through small, repeatable
improvements. It separates (1) the execution timeline, (2) reusable
configurations, and (3) tactical units of work so runs stay consistent, reviewable,
and easy to extend.

### Core principles

1. Separate process from configuration.
`WORKFLOW.md` is the single timeline. Presets define the intended outcome and
quality bar. Actions are the tactics applied during execution.

2. Decide the stable parameters up front.
The plan exists to lock down scope, intended outcome, selected preset, personas,
checks/definition-of-done, constraints, and canonical sources—so execution focuses
on the uncertain, high-leverage work inside the scope.

3. Scope is the main control surface.
Prefer small, repeatable scopes. Allow bounded second-order fixes (links,
terminology alignment) to keep the wiki coherent, but record them.

4. Canonicality over duplication.
Prefer one source of truth per topic, supported by navigation and cross-links,
rather than repeating facts across pages.

5. Make uncertainty first-class.
Do not fill in unknowns silently. Label assumptions/questions and capture follow-ups
explicitly.

6. Persona-guided reasoning and writing.
Use personas to shape how we analyze (think-as) and how we present (write-for),
while keeping outputs audience-first.

## System-level benefits

Clarity is designed to deliver three system-level benefits in agentic operations:

- Quality: outputs become more consistent, less ambiguous, and less dependent on which specific agent ran the pass.
- Governance: change authority is explicit, boundaries are enforced, and high-impact edits require explicit approval.
- Auditability: every material action is traceable to inputs, decisions, approvals, and checks.

Together, these properties improve reliability at scale, reduce coordination overhead, speed incident/debug loops, and increase trust in agent-produced documentation.

Author experience impact: the system front-loads decisions once (preset, scope,
personas, checks), so the writing/editing loop feels guided rather than
open-ended.

## Terminology

- Project wiki: The full collection of project pages and structure that represent the project.
- Wiki page: A single page in the project wiki (typically a Markdown file).
- Dimension: The aspect of the project you’re deepening in a pass (e.g., decisions, requirements, risk).
- Scope: The slice of the wiki in focus for a pass (paths/headings/labels), plus any bounded second-order fixes needed to keep the wiki consistent (e.g., link updates, terminology alignment).
- Preset (clarity preset): An outcome-focused preset from `presets/overview.md` (or a custom preset) that maps to actions.
- Pass run (clarity pass run): Applying a preset to a scope using `WORKFLOW.md`.

## Personas

Each pass is executed with explicit personas that shape both (1) how the agent
thinks and (2) how the output is written. Personas are selected once per pass
(not per action).

Two roles:

- Think-as persona: the analysis control mode (how the agent reasons about the scope).
- Write-for persona: the reader control mode (who the output is optimized for).

Personas are control points, not style tags. For each selected persona, define:

- control objective,
- failure modes it prevents,
- must-answer questions it forces the pass to resolve (or explicitly defer), and
- persona-specific checks used at audit.

Advantage: this turns persona choice into an explicit quality + governance + auditability control mechanism, not a writing preference.

Personas live under `personas/`. Prefer recording the persona IDs in the plan
and report.

Persona selection default: use the personas defined on the selected preset in
`presets/overview.md` (override only when explicitly needed).

Default polish persona: `technical-editor`.

## At a glance

A preset is an outcome-focused configuration (stored in `presets/overview.md`) that maps
to a set of actions. A pass run applies that preset to a scope.

Typical run outline:
**Intake loop → Scope → Preset selection (agent) → Actions → Audit → Polish → Report**.

### Run a pass (10 minutes to start)

1. Follow `WORKFLOW.md` (intake loop → scan → plan → execute → audit → polish → report).
2. Create or update `.clarity/workflow/plan.md` from `templates/plan.md` when scoping begins.
   Also initialize `.clarity/workflow/canonical-sources.md`, `.clarity/workflow/decision-ledger.md`, and `.clarity/workflow/receipts/` from templates.
3. Define a scope (pages/paths, headings, labels) and keep it small and repeatable.
4. Preset selection (agent): choose the best-fit preset from `presets/overview.md` and record its personas, action plan, deliverables, and checks (or propose a custom preset for approval).
5. Apply the mapped actions to the scoped pages/areas.
6. Audit using the general checks, selected preset checks, and process-compliance checks; resolve failures.
7. Polish for scanability and consistency (cosmetic/editorial only after audit).
8. Generate the report using `templates/report.md`.

Presets map intended outcomes to actions.

### Common outcomes → preset

Agent heuristic: match the intended outcome to the closest preset in `presets/overview.md`.

Use preset classes to narrow selection quickly:

- Foundation (wiki integrity): structure, canonicality, terminology, traceability, and propagation consistency.
- Product and decision quality: requirements, risk, integration, migration, and policy controls.
- Scale and operations: onboarding, support, and cross-team handoffs.

#### Foundation (wiki integrity)

- Unstructured notes, unclear structure → `Unstructured notes -> structured, enriched wiki slice`
- Flat folder, hard to navigate → `Flat folder -> navigable hierarchy`
- Duplicate/overlapping pages → `Overlapping pages -> canonical source`
- Terms mean different things in different places → `Terminology drift -> consistent language`
- Claims/decisions lack sources → `Low traceability -> evidence-backed wiki`
- A targeted change may be partially propagated across docs → `Targeted update -> propagation-consistent wiki`

#### Product and decision quality

- Alternatives exist but decisions are implicit → `Design exploration -> decision-ready`
- Goals exist but requirements are missing → `Goals -> requirements`
- Risks are listed but unmanaged → `Risk-heavy project wiki -> mitigated project wiki`
- Integration boundaries are unclear → `Integration uncertainty -> interface-dependency explicit wiki`
- Policy/compliance pressure is high → `Compliance pressure -> policy-controlled evidence-backed wiki`
- Migration planning is risky/ambiguous → `Migration risk -> cutover-ready migration wiki`

#### Scale and operations

- Onboarding flow is fragmented/hard to follow → `Onboarding friction -> self-serve onboarding wiki`
- Support churn is high → `Support churn -> triage-to-resolution support wiki`
- Cross-team transitions are unclear → `Cross-team handoff gaps -> contract-driven handoff wiki`

### Or propose a custom preset (no library preset fits)

If no preset in `presets/overview.md` fits, select actions from `actions/index.md` and propose
a custom preset (name + personas + core/conditional actions + deliverables + checks) for approval before applying changes.

One way to compose a custom preset is to pick a dimension and start from these actions:

- Problem framing: `define-problem-statement`, `capture-user-needs`, `define-success-criteria`
- Decisions: `document-decisions`, `capture-alternatives`, `document-tradeoffs`
- Requirements depth: `derive-requirements`, `define-workflows`, `define-interfaces`, `define-acceptance-criteria`
- Risk: `identify-risks`, `map-dependencies`, `add-mitigations`

### Minimum useful labels (start here)

You can do the full taxonomy later. For most passes, these cover the majority of
intent:

- Fact, Assumption, Question, Definition
- Goal, Non-Goal, Scope, Constraint
- Decision, Rationale, Tradeoff
- Requirement, Acceptance Criterion
- Risk, Mitigation

### “Done” for a pass run

- Changes are limited to scope (plus any bounded second-order fixes needed to keep references consistent).
- Open questions are captured.
- The report explains what changed and why.

Use `WORKFLOW.md` to run the intake loop, maintain the plan, and execute the pass.

## Scoping

Create a scope before running a pass so the work is precise and repeatable. A
scope can be a whole file, a section/subsection, or a label filter across one or
more files.

Scope format (use in the plan/report):

- Scope ID: short name for reference.
- Paths: file(s), directory, or glob.
- Headings: optional `H1 > H2 > H3` path.
- Labels: optional Clarity label filter.
- Exclusions: optional paths or headings to skip.
- Second-order fixes: optional notes on expected out-of-scope mechanical updates (links, terminology), which are allowed by default unless excluded.

You can scope a single label across a whole page or across a set of pages
by combining paths and labels.

Examples:

- `S1: paths=wiki/overview.md`
- `S2: paths=wiki/overview.md, headings=Goals`
- `S3: paths=wiki/design/, labels=Risk`
- `S4: paths=[wiki/overview.md, wiki/design/pruning.md], labels=Assumption`

## Artifacts

- `presets/overview.md`: preset library overview (global rules + preset list).
- `presets/*.md`: individual preset definitions.
- `LABELS.md`: clarity labels for statements in the wiki.
- `actions/index.md`: action library used by presets.
- `actions/`: action category folders (see `actions/index.md`).
- `actions/scripts/` (optional): shared action scripts when present.
- `WORKFLOW.md`: agent workflow (intake loop → scan → plan → execute → audit → polish → report).
- `templates/plan.md`: plan template used to create `.clarity/workflow/plan.md`.
- `templates/report.md`: report template used to create `.clarity/workflow/report.md`.
- `templates/canonical-sources.md`: canonical source register template.
- `templates/decision-ledger.md`: locked/open decision ledger template.
- `templates/receipt.md`: per-action receipt template.
- `.clarity/workflow/`: runtime folder in target repos containing the per-branch `plan.md`, `report.md`, `canonical-sources.md`, `decision-ledger.md`, and `receipts/` (not required in this methodology repo unless you are running a pass against this repo itself).

## Label application

- See `LABELS.md` for labeling rules, inference strategy, formats, and the taxonomy.

## Clarity dimensions

- Problem framing and outcomes: problem statement, success metrics, and why now.
- User and stakeholder needs and context: personas, jobs-to-be-done, journeys, and pain points.
- Market and competition: alternatives, differentiation, and positioning.
- Value proposition: core benefits, tradeoffs, and expected impact.
- Business viability and constraints: strategy fit, revenue/cost, pricing/channels, and policy limits.
- Solution concept and UX scope: workflows, MVP boundaries, and accessibility.
- Technical feasibility and architecture readiness: stack fit, integrations, and build vs buy.
- Data, security, and compliance readiness: data sources, privacy, and regulatory needs.
- Risk, assumptions, and validation: unknowns, hypotheses, and experiment approach.
- Delivery and operational readiness: resourcing, rollout, adoption, support, and SLOs.

## Page Types

- Strategy and alignment: vision, principles, stakeholder map, owners/RACI, decision process.
- Business framing: business objectives, business case, costs/tradeoffs, policy constraints.
- Problem framing: problem statement, why now, context, constraints.
- Goals and measures: goals, non-goals, scope boundaries, success criteria, metrics/KPIs, baselines, measurement plan.
- Discovery and research: research plan, interview guides/notes, findings/insights, hypotheses/experiments.
- Users and workflows: personas/JTBD, journeys, scenarios, workflows, edge cases.
- Market and alternatives: competitive insights, alternatives, “build vs buy”, option comparisons.
- Product definition: PRD/feature briefs, dependency map, milestones, sequencing.
- Requirements: functional requirements, quality attributes (NFRs), acceptance criteria.
- Design and UX: information architecture, UX flows, wireframes/prototypes, content/UX writing, accessibility notes.
- Technical design: architecture docs, ADRs, data models/schemas, API/interface contracts, integration specs.
- Risk and governance: risk register, mitigations, threat model, privacy/compliance notes.
- Delivery and rollout: roadmap, rollout strategy, migrations/deprecations, launch checklist, comms plan.
- Quality and operations: test strategy/plans, release criteria, SLOs/SLIs, observability plan, runbooks, on-call/incident response, postmortems.
- Enablement: user docs, support playbooks, training, change management.
