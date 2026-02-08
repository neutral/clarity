# Clarity Workflow

This workflow is the end-to-end agent process for running a clarity pass against
a project wiki.

Key idea: run an **intake loop** until the agent can restate the user’s intent
unambiguously; only then move on to scan/plan/execute.

When scoping begins in a target project wiki, create `.methodologies/clarity/scratch/` (if missing) and initialize:

- `.methodologies/clarity/scratch/plan.md` from `templates/plan.md`
- `.methodologies/clarity/scratch/canonical-sources.md` from `templates/canonical-sources.md`
- `.methodologies/clarity/scratch/decision-ledger.md` from `templates/decision-ledger.md`
- `.methodologies/clarity/scratch/receipts/` for per-action receipts (using `templates/receipt.md`)

Keep these files updated as shared execution artifacts. The owner and agent both
update them as the pass progresses. Each branch should have a single active
`plan.md` in `.methodologies/clarity/scratch/`.

Before intake, read `.methodologies/clarity/status.md` and treat the
**Permissions** section (`read and write allowed`, `read-only`, `no access`) as
hard path boundaries for the run.

## Why this sequence works

This workflow is intentionally layered so wiki updates are easier to run and
easier to review:

- Intake: remove ambiguity before editing.
- Baseline scan: locate the highest-leverage gaps in the scoped slice.
- Preset selection: choose a known playbook instead of inventing a process each run.
- Plan: lock control knobs (scope, personas, checks, compliance).
- Execute: apply actions with explicit change classification and receipts.
- Audit: enforce quality + governance before polish.
- Polish: improve readability without reopening decision risk.
- Report: provide a reusable, auditable handoff for the next pass.

Result: authors spend less effort re-explaining context and resolving preventable
drift, and more effort improving wiki quality.

## 0) Intake loop

Collect the minimum inputs needed to run a pass. If any required input is
missing or ambiguous, ask follow-ups and do not proceed.

Initialize `.methodologies/clarity/scratch/plan.md` (from `templates/plan.md`) and record
answers under **Intent** and **Intake log**.

Note (Why We Plan / “Thinking Budget”): The plan is not paperwork; it is a
deliberate way to constrain degrees of freedom so the agent doesn’t repeatedly
re-decide the basics while writing. Its job is to lock down the parameters that
should be stable for the pass (scope, intended outcome, preset selection, personas,
checks/definition-of-done, constraints, and canonical sources), and to explicitly
allocate the agent’s reasoning to the uncertain, high-leverage work inside the
scope (structure, missing seams, inconsistencies, risks/mitigations, and decision
traceability). If execution reveals a new constraint, dependency, or conflict
that changes the “thinking budget,” record it and return to intake rather than
silently drifting.

Required:

1. Scope: which pages/areas are in scope (paths/headings/labels)? Any explicit exclusions? Are second-order fixes allowed outside this scope (default: yes for bounded, mechanical fixes like link updates or terminology alignment)?
2. Intended outcome: what clarity outcome do you want (one sentence)?
3. Audience + task: who is the primary audience and what do they need to do?
4. Confusions: what feels unclear, risky, or easiest to misinterpret today?
5. Terminology: which terms are overloaded or frequently misunderstood?
6. Goals + non-goals: what are the explicit goals and non-goals?
7. Permissions: what are the effective path boundaries from `.methodologies/clarity/status.md` (`read and write allowed`, `read-only`, `no access`), and does scope fit these boundaries?
8. Compliance controls: what scope-drift budget applies, how changes are classified (`cosmetic` / `structural` / `semantic` / `decision-impacting`), whether action receipts are mandatory (recommended: yes), and what approval policy applies to `semantic` / `decision-impacting` edits?

Optional (ask when it will affect decisions during the pass):

1. Canonical sources: what sources are authoritative if conflicts appear?
2. Fixed vs open: which decisions are fixed vs still open?
3. Style constraints: tone/format/length constraints?
4. “Done” definition: what does done look like for this pass?
5. Deadlines/dependencies: anything shaping scope or sequencing?
6. Persona override: do you want to override the preset-defined personas? (Default: use personas defined on the selected preset in `../library/presets/overview.md`.)

Intake exit criteria:

- The agent can restate scope (including exclusions), outcome, and non-goals in plain language.
- The scope is small and repeatable (not “the whole wiki” unless explicitly intended).
- Any unresolved blockers are captured as explicit open questions (not implied).

## 1) Baseline scan

- List candidate pages/areas in scope and current clarity state (WIP, draft, stable).
- Note hotspots that affect planning (overlap, drift, missing sections, weak definitions).
- If the scan reveals scope mismatch or missing intent, return to the intake loop.
- Record scan notes under **Baseline scan** in the plan.

## 2) Preset selection

- Choose the best-fit preset from `../library/presets/overview.md` based on the intended outcome + scope.
- If no preset fits: propose a custom preset (name + personas + core/conditional actions + deliverables + checks) and wait for owner approval.
- Use the personas defined on the selected preset (unless explicitly overridden).
- Validate persona fit against the highest-cost failure modes in scope (personas are control points, not style tags).

## 3) Plan

- Record the preset-defined action plan:
  - core actions (minimum)
  - conditional actions (triggers)
  - any added actions (via the expansion rule)
- Record the preset-defined personas (think-as / write-for / audit / polish) and their IDs (from `../library/personas/`).
- Record persona control mapping:
  - control objective per persona
  - failure modes each persona is expected to prevent
  - must-answer questions to resolve (or explicitly defer as `Question`)
  - persona-based checks to run at audit
- Choose an audit bar (checks + writing principles) that matches the planned changes.
- Set compliance controls:
  - scope-drift budget (and unit: files or edits)
  - change classification policy (`cosmetic` / `structural` / `semantic` / `decision-impacting`)
  - receipt policy (one receipt per applied action)
  - approval policy for `semantic` / `decision-impacting` edits
  - permissions status path + effective path boundaries used for this run
  - canonical source register and decision ledger paths
- Confirm guardrails: keep edits limited to scope and permissions; second-order fixes outside scope are OK when needed (e.g., link updates, terminology alignment) as long as they stay bounded/mechanical, permission-allowed, and recorded; label unknowns as `Question` / `Assumption` (see `LABELS.md`).
- Record preset selection, action plan, and audit bar selections under **Plan** in the plan.

## 4) Execute

- Execution is primarily guided by the think-as and write-for personas defined on the selected preset.
- Apply the core actions, then apply conditional actions as their triggers are observed.
- If you add an action, record "Added action: X; Trigger: Y; Artifact: Z" in the plan (do not return to intake for this alone).
- Use the persona must-answer set as an execution checklist; unresolved items must be answered or explicitly deferred and labeled.
- Classify each change as `cosmetic`, `structural`, `semantic`, or `decision-impacting`; record it in the plan.
- Require explicit owner approval record for `semantic` and `decision-impacting` edits before finalizing the pass.
- Check path permissions before each edit: only modify files in `read and write allowed`; never modify `read-only`; do not read or modify `no access`.
- Write one action receipt per applied action under `.methodologies/clarity/scratch/receipts/`.
- Update `.methodologies/clarity/scratch/canonical-sources.md` and `.methodologies/clarity/scratch/decision-ledger.md` when new canonical sources or locked/open decisions are introduced.
- Track scope-drift usage against the budget defined in the plan.
- If conflicts appear and canonical sources are unclear, return to the intake loop to clarify before resolving.
- Update the **Execution log** and **Changes summary** in the plan as you go.

## 5) Audit (hard gate)

Audit is mandatory and dual-gated. Apply the audit persona(s), run content checks
and process-compliance checks, and fix any failures before moving on.

Pick one or more checks and principles that match what you changed. Record your
selections in the report.

Always include:

- Content checks:
  - General checks (from `../library/presets/overview.md`).
  - The selected preset's checks (from `../library/presets/overview.md`).
- Persona checks:
  - the persona-based checks recorded in the plan's persona control mapping
- Process-compliance checks (from `../library/presets/overview.md`).

Quality checks:

- Structure: sections, ordering, and scannability.
- Precision: unambiguous wording and testable statements.
- Consistency: terms and claims align across pages.
- Narrative flow: logical progression and minimal context switching.
- Completeness: required context is present for the intended task.
- Traceability: key claims link to sources or decisions.

Process-compliance checks:

- Change classification: all substantive edits are classified (`cosmetic` / `structural` / `semantic` / `decision-impacting`) and recorded.
- Approval gate: `semantic` / `decision-impacting` edits include explicit approval evidence.
- Receipt completeness: one receipt exists per applied action.
- Scope-drift budget: out-of-scope mechanical changes stay within the approved budget; exceedance is an automatic audit failure unless intake is revisited and approved.
- Permissions compliance: reads/writes stayed within `.methodologies/clarity/status.md` permissions; no edits to `read-only`; no access to `no access`.
- Register hygiene: canonical source register and decision ledger are current for this pass.
- Traceability hygiene: report links to register/ledger/receipt artifacts.

Writing principles:

- Audience-first: state who a page/section is for and what it enables.
- Single source of truth: avoid duplicating facts across files.
- Explicit scope: clear goals, non-goals, and boundaries.
- Decision traceability: decisions include rationale and tradeoffs.
- Evidence-backed claims: link key claims to sources.
- Consistent terminology: definitions are stable and reused.
- Measurable outcomes: success criteria and acceptance criteria exist.
- Detail seams: interfaces, workflows, and edge cases are explicit where they matter.
- Visible uncertainty: assumptions and questions are labeled.

## 6) Polish (hard gate)

Polish is mandatory after audit. Apply the polish persona (recommended:
`technical-editor`) and improve scanability and consistency without introducing
new unsafe changes.

Guardrail:

- If polish requires substantive changes (new claims, new decisions, meaning changes, new interfaces), return to **Audit** after making them.

## 7) Report

- Generate `.methodologies/clarity/scratch/report.md` from `templates/report.md` using the plan as input.
- Include a compliance summary: change classification counts, scope-drift budget usage, receipt count, and register/ledger updates.

## Exit criteria

- Changes are limited to scope (plus any second-order fixes needed to keep references consistent).
- Changes and reads respect `.methodologies/clarity/status.md` permissions.
- Scope-drift budget is respected (or explicitly escalated in intake).
- Audit is complete (content checks + process-compliance checks) and polish has been applied.
- Persona must-answer set is resolved or explicitly deferred as labeled open questions.
- Open questions are captured.
- The report explains what changed and why.
