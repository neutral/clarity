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

## System-level benefits

Clarity is designed to deliver three system-level benefits in agentic operations:

- Quality: outputs become more consistent, less ambiguous, and less dependent on which specific agent ran the pass.
- Governance: change authority is explicit, boundaries are enforced, and high-impact edits require explicit approval.
- Auditability: every material action is traceable to inputs, decisions, approvals, and checks.

Together, these properties improve reliability at scale, reduce coordination overhead, speed incident/debug loops, and increase trust in agent-produced documentation.

Author experience impact: the system front-loads decisions once (preset, scope,
personas, checks), so the writing/editing loop feels guided rather than
open-ended.

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
   checks/definition-of-done, constraints, and canonical sources so execution focuses
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

## Control Knobs (Why The Layers Exist)

Clarity is designed for wiki updates where many agents can otherwise drift. Each
layer is a control knob that removes a specific source of variance:

- Scope knob (`plan.md`): limits where edits can occur so passes stay reviewable.
- Preset knob (`../library/presets/overview.md`): maps outcome intent to a known action/check set.
- Persona knob (`../library/personas/`): controls failure modes and required questions, not writing style.
- Action knob (`../library/actions/`): applies repeatable tactics with deterministic/structural/editorial strategies.
- Label knob (`LABELS.md`): makes intent explicit without clutter through section-default inference.
- Compliance knobs (`plan.md` controls): scope-drift budget, change classes, approval gates, and receipts.
- Permissions knob (`.methodologies/clarity/status.md`): defines path-level
  read/write boundaries (`read and write allowed`, `read-only`, `no access`).
- Audit knob (`WORKFLOW.md` + presets): enforces both content quality and process compliance before finalization.

Together these knobs make updates safer and faster: less rework, clearer handoffs,
and predictable outcomes across different agents.

## Terminology

- Project wiki: The full collection of project pages and structure that represent the project.
- Wiki page: A single page in the project wiki (typically a Markdown file).
- Dimension: The aspect of the project you are deepening in a pass (for example decisions, requirements, risk).
- Scope: The slice of the wiki in focus for a pass (paths/headings/labels), plus any bounded second-order fixes needed to keep the wiki consistent (for example link updates, terminology alignment).
- Preset (clarity preset): An outcome-focused preset from `../library/presets/overview.md` (or a custom preset) that maps to actions.
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

Personas live under `../library/personas/`. Prefer recording the persona IDs in the plan
and report.

Persona selection default: use the personas defined on the selected preset in
`../library/presets/overview.md` (override only when explicitly needed).

Default polish persona: `technical-editor`.

## Start Here

### Reading order

1. `CLARITY.md` (this file): model, principles, and entry-level operating contract.
2. `WORKFLOW.md`: execution timeline (intake -> plan -> execute -> audit -> polish -> report).
3. `../library/overview.md`: entrypoint for library capability selection.
4. `../library/presets/overview.md`: outcome playbooks (where applicable).
5. `../library/actions/index.md` and action files: tactical execution units.
6. `ARTIFACTS.md`: runtime artifact inventory and template mappings.
7. `LIBRARY.md`: library layer purpose, boundaries, and structure.
8. `LABELS.md`: semantic consistency model (section-default inference + taxonomy).
9. `templates/`: runtime artifacts for planning, compliance, and reporting.
10. `appendix/clarity-dimensions.md`: stable domain dimension reference.
11. `appendix/page-types.md`: stable page-type reference.

### Scope first

Create a scope before running a pass so the work is precise and repeatable. A
scope can be a whole file, a section/subsection, or a label filter across one or
more files.

Scope format (use in the plan/report):

- Scope ID: short name for reference.
- Paths: file(s), directory, or glob.
- Headings: optional `H1 > H2 > H3` path.
- Labels: optional Clarity label filter.
- Exclusions: optional paths or headings to skip.
- Second-order fixes: optional notes on expected out-of-scope mechanical updates
  (links, terminology), which are allowed by default unless excluded.

Examples:

- `S1: paths=wiki/overview.md`
- `S2: paths=wiki/overview.md, headings=Goals`
- `S3: paths=wiki/design/, labels=Risk`
- `S4: paths=[wiki/overview.md, wiki/design/pruning.md], labels=Assumption`

### Run summary

Use `WORKFLOW.md` as the executable contract. At minimum:

1. Confirm permissions from `.methodologies/clarity/status.md`.
2. Initialize or update required runtime artifacts from `templates/`.
3. Select the best-fit library capability/preset and apply mapped actions.
4. Complete audit, polish, and report gates before finalization.

Preset selection guidance (outcome mapping and custom composition) lives in
`../library/overview.md`.

## Minimum useful labels (start here)

You can do the full taxonomy later. For most passes, these cover the majority of
intent:

- Fact, Assumption, Question, Definition
- Goal, Non-Goal, Scope, Constraint
- Decision, Rationale, Tradeoff
- Requirement, Acceptance Criterion
- Risk, Mitigation

## Done criteria

- Changes are limited to scope (plus any bounded second-order fixes needed to keep references consistent).
- All changes respect `.methodologies/clarity/status.md` permissions.
- Open questions are captured.
- The report explains what changed and why.

## Interfaces

- `WORKFLOW.md`: executable run contract.
- `ARTIFACTS.md`: runtime artifact inventory and template-to-runtime mappings.
- `LIBRARY.md`: library layer purpose, boundaries, and structure.
- `LABELS.md`: label application rules and taxonomy.
- `../library/overview.md`: library capability selection guidance.

## Appendix

- `appendix/clarity-dimensions.md`: stable dimension reference used when
  selecting and refining scope.
- `appendix/page-types.md`: stable page-type reference used when shaping or
  extending wiki structure.
