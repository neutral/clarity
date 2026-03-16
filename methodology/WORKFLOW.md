# Clarity Workflow

This file is the runtime contract for one Clarity pass.

## Start Here

This file is authoritative for:

- pass sequence
- runtime initialization
- permissions and approval gates
- claim and evidence handling
- audit, polish, report, and exit gates

Use these next documents:

- `ARTIFACTS.md`: runtime artifact inventory and template mappings
- `LIBRARY.md`: library usage boundaries
- `../library/overview.md`: runtime library selection entrypoint
- `../library/presets/overview.md`: preset catalog and selection model

## Path Context

Source repo:

- `methodology/WORKFLOW.md`
- relative template paths such as `templates/plan.md`

Installed runtime:

- `.methodologies/clarity/methodology/WORKFLOW.md`
- runtime artifacts under `.methodologies/clarity/scratch/`

## Run Unit

A clarity pass run is the bounded execution recorded by one active
`.methodologies/clarity/scratch/plan.md`.

One pass run has:

- one stable `Pass ID`
- one primary scope and intended outcome
- one selected preset or approved custom preset
- one audit closeout
- one report
- one evidence run folder at
  `.methodologies/clarity/scratch/evidence/<pass-id>/`

Each branch should have one active `plan.md`. Evidence may accumulate as one
run folder per `Pass ID`.

## Hard Boundaries

Before intake, read `.methodologies/clarity/status.md` and treat both
**Operating scope** and **Permissions** (`read and write allowed`, `read-only`,
`no access`) as hard boundaries for the run.

These rules are always in force:

- keep edits limited to scope plus approved bounded second-order fixes
- check path permissions before each read or write
- classify substantive edits as `cosmetic`, `structural`, `semantic`, or
  `decision-impacting`
- require explicit approval evidence for `semantic` and
  `decision-impacting` edits before finalization
- write one receipt per applied action
- keep source register, decision ledger, and evidence current while the run is
  active

## Runtime Initialization

When scoping begins in a target project wiki, create
`.methodologies/clarity/scratch/` if it is missing and initialize or update:

- `.methodologies/clarity/scratch/plan.md` from `templates/plan.md`
- `.methodologies/clarity/scratch/canonical-sources.md` from
  `templates/canonical-sources.md`
- `.methodologies/clarity/scratch/decision-ledger.md` from
  `templates/decision-ledger.md`
- `.methodologies/clarity/scratch/receipts/` for per-action receipts using
  `templates/receipt.md`
- `.methodologies/clarity/scratch/evidence/<pass-id>/index.md` from
  `templates/evidence/index.md` once the run has a stable `Pass ID`

Use `assets/` inside the evidence run folder only when bulky raw artifacts are
needed.

`Pass ID` should be stable for the life of the run. A practical default is
`P-YYYYMMDD-<short-scope-or-intent-slug>`.

## Claim And Evidence Loop

Claims and evidence are a required runtime loop that stays active during
**Plan**, **Execute**, and **Audit**.

These rules are always in force:

- load the runtime claim catalog from `../library/claims/README.md` before
  planning completes
- create `.methodologies/clarity/scratch/evidence/<pass-id>/index.md` once
  `Pass ID` is stable
- use the evidence index as the canonical place for claim coverage, evidence
  inventory, and current verdicts
- keep each evidence item in the shared four-part shape:
  - claim
  - method or context
  - observations and raw artifacts
  - verdict
- open baseline claim threads for every run:
  - `intent-target`
  - `boundary-compliance`
  - `verification-posture`
- activate conditional claim types when materially relevant:
  - `authority-basis`
  - `diagnosis`
  - `transformation`
  - `coverage-propagation`
  - `governance-ownership`
  - `residual-uncertainty`
- create a new evidence item when the concrete claim, scoped subject, or proof
  target changes materially
- enrich an existing evidence item when the same concrete claim is gaining more
  support, artifacts, or a refined verdict
- update evidence before moving past the work that made the claim material
- treat stale or missing evidence for materially active claims as an audit
  failure
- let plan and report summarize evidence posture without duplicating the
  evidence index inventory

## 0) Intake Loop

Collect the minimum inputs needed to run a pass. If any required input is
missing or ambiguous, ask follow-ups and do not proceed.

Initialize `.methodologies/clarity/scratch/plan.md` from `templates/plan.md`
and record answers under **Intent** and **Intake log**.

The plan is not paperwork. Its job is to lock down the parameters that should
stay stable for the pass so the agent spends reasoning on the uncertain,
high-leverage work inside the scope.

Required:

1. Scope: which pages or areas are in scope (paths, headings, labels)? Any
   explicit exclusions? Are second-order fixes allowed outside this scope
   (default: yes for bounded, mechanical fixes like link updates or terminology
   alignment)?
2. Intended outcome: what clarity outcome do you want?
3. Audience and task: who is the primary audience and what do they need to do?
4. Confusions: what feels unclear, risky, or easiest to misinterpret today?
5. Terminology: which terms are overloaded or frequently misunderstood?
6. Goals and non-goals: what are the explicit goals and non-goals?
7. Status scope and permissions: what operating scope mode is defined in
   `.methodologies/clarity/status.md`, what in-scope roots are listed, what are
   effective permission boundaries, and does requested pass scope fit all of
   them?
8. Compliance controls: what scope-drift budget applies, how changes are
   classified (`cosmetic` / `structural` / `semantic` /
   `decision-impacting`), whether action receipts are mandatory
   (recommended: yes), and what approval policy applies to `semantic` /
   `decision-impacting` edits?

Optional, but ask when it will affect decisions during the pass:

1. Canonical sources: what sources are authoritative if conflicts appear?
2. Fixed vs open: which decisions are fixed vs still open?
3. Style constraints: tone, format, or length constraints?
4. Definition of done: what does done look like for this pass?
5. Deadlines or dependencies: anything shaping scope or sequencing?
6. Persona override: do you want to override preset-defined personas?

During intake:

- assign or confirm `Pass ID` once scope and intended outcome are concrete
  enough to name the run
- record the future evidence run path in the plan

Intake exit criteria:

- the agent can restate scope, exclusions, intended outcome, and non-goals in
  plain language
- the scope is small and repeatable unless a broader pass is explicitly
  intended
- unresolved blockers are captured as explicit open questions
- the run is concrete enough to support planning and evidence initialization

## 1) Baseline Scan

- list candidate pages or areas in scope and current clarity state (WIP, draft,
  stable)
- note hotspots that affect planning: overlap, drift, missing sections, weak
  definitions, unsupported statements, broken propagation, or ambiguity
- note likely conditional claim activations:
  `authority-basis`, `diagnosis`, `transformation`,
  `coverage-propagation`, `governance-ownership`, and
  `residual-uncertainty`
- if the scan reveals scope mismatch or missing intent, return to **Intake**
- record scan notes under **Baseline scan** in the plan

## 2) Library Selection

- start at `../library/overview.md` and follow its capability mapping to select
  the best-fit preset and actions for the intended outcome and scope
- select the best-fit preset from `../library/presets/overview.md`
- use the personas defined on the selected preset unless explicitly overridden
- use the action expansion rule from `../library/actions/index.md` when
  preset-defined actions are not enough
- load the runtime claim catalog from `../library/claims/README.md`
- open the claim type folders for baseline claims and any likely conditional
  claims
- use `claim.md` in each claim type folder to check applicability and phrase
  concrete claims
- use `evidence.md` in each claim type folder to understand evidence structure,
  verdict meanings, and thread-splitting rules

If no preset fits, propose a custom preset and wait for owner approval before
proceeding.

## 3) Plan

- record the preset-defined action plan:
  - core actions
  - conditional actions and their triggers
  - any added actions and why they were added
- record the selected personas and their IDs from `../library/personas/`
- record persona control mapping:
  - control objective per persona
  - failure modes each persona should prevent
  - must-answer questions to resolve or explicitly defer
  - persona-based checks to run at audit
- choose an audit bar that matches the planned changes
- set compliance controls:
  - scope-drift budget
  - change classification policy
  - receipt policy
  - approval policy for `semantic` / `decision-impacting` edits
  - permissions status path and effective path boundaries
  - canonical source register and decision ledger paths
  - claim catalog path and evidence run path
- once `Pass ID` is stable, create the evidence run folder and index
- open baseline evidence items when they are concrete enough to state:
  - `intent-target` once intended outcome, audience, and success target are
    concrete enough to state
  - `boundary-compliance` once scope, permissions, exclusions, and
    second-order-fix rules are concrete enough to state
  - `verification-posture` once the audit bar is selected, even if its verdict
    remains `open` until later
- confirm guardrails:
  - edits stay inside scope and permissions
  - bounded mechanical second-order fixes are recorded
  - unknowns are labeled as `Question` or `Assumption`
- record preset selection, action plan, and audit bar in the plan

## 4) Execute

- execution is primarily guided by the selected think-as and write-for personas
- apply the core actions, then apply conditional actions as their triggers are
  observed
- if you add an action, record it in the plan with trigger and artifact
- use the persona must-answer set as an execution checklist
- classify each change as `cosmetic`, `structural`, `semantic`, or
  `decision-impacting` and record it in the plan
- require explicit owner approval evidence for `semantic` and
  `decision-impacting` edits before finalizing the pass
- check path permissions before each edit:
  - only modify `read and write allowed`
  - never modify `read-only`
  - do not read or modify `no access`
- write one action receipt per applied action under
  `.methodologies/clarity/scratch/receipts/`
- in each receipt, record the claim types affected and the evidence items
  created or updated by that action
- update `.methodologies/clarity/scratch/canonical-sources.md` and
  `.methodologies/clarity/scratch/decision-ledger.md` when new canonical
  sources or locked/open decisions are introduced
- keep the claim and evidence loop active as work happens:
  - if a material conditional claim becomes active, create its evidence item
    before moving on
  - add observations that support or weaken the claim
  - link receipts, registers, ledger entries, and scoped pages
  - reference raw artifacts when needed
  - split evidence threads when one claim stops being inspectable as one unit
  - keep verdicts current when support changes materially
- keep the evidence index inventory current with new or enriched evidence
  items
- track scope-drift usage against the budget defined in the plan
- if conflicts appear and canonical sources are unclear, return to **Intake**
  before resolving them
- update the plan's **Execution log** and **Changes summary** sections as you
  go

## 5) Audit (Hard Gate)

Audit is mandatory and dual-gated. Apply the audit persona(s), run content
checks and process-compliance checks, and fix failures before moving on.

Always include:

- general content checks
- the selected preset's checks
- the persona-based checks recorded in the plan
- the methodology-wide process-compliance checks below

General content checks:

- Anti-bleed: outputs do not mention personas or contain meta-role narration.
- Scope discipline: changes stay within scope plus bounded mechanical
  second-order fixes, and those fixes are recorded.
- Visible uncertainty: unknowns are labeled as `Assumption` or `Question`.
- Canonicality: avoid duplicating facts across pages; if overlap exists, pick a
  canonical source and cross-link.
- Link/rename hygiene: moved or renamed pages have links updated and navigation
  remains intact.
- Fixed decisions: do not contradict locked decisions; if conflicts appear,
  return to **Intake** to confirm canonical sources.
- Structure: sections, ordering, and scanability fit the pass.
- Precision: wording is unambiguous and statements are testable where
  applicable.
- Consistency: terms and claims align across the scoped surfaces.
- Completeness: required context exists for the intended task.
- Traceability: key claims link to sources, decisions, or evidence.

Process-compliance checks:

- Change classification: all substantive edits are classified and recorded.
- Approval gate: `semantic` / `decision-impacting` edits include explicit
  approval evidence.
- Receipt completeness: one receipt exists per applied action.
- Scope-drift budget: out-of-scope mechanical changes stay within the approved
  budget; exceedance is an automatic audit failure unless intake is revisited
  and approved.
- Scope and permissions compliance: reads and writes stayed within declared
  operating scope and permissions.
- Register hygiene: canonical source register and decision ledger are current
  for this pass.
- Evidence completeness:
  - evidence run index exists for the current `Pass ID`
  - baseline claim threads exist and have current verdicts
  - materially active conditional claims have evidence items or an explicit
    rationale for not activating
  - evidence items reference the receipts, register, ledger, and report fields
    that matter to the claim
  - stale or missing evidence is an audit failure until corrected

During audit:

- update `verification-posture` evidence with checks run, results, failures,
  and blind spots
- update the verdict on every active evidence item
- close out evidence items that are stable for the current run
- carry forward any `open` or `incomplete` evidence into the report and
  next-pass notes

Re-entry rules:

- if audit shows unsupported content or incomplete transformation support,
  return to **Execute**
- if audit shows a scope, authority, or approval mismatch, return to
  **Intake** or **Plan** as appropriate

## 6) Polish (Hard Gate)

Polish is mandatory after audit. Apply the polish persona (recommended:
`technical-editor`) and improve scanability and consistency without
introducing new unsafe changes.

Guardrail:

- if polish requires new claims, new decisions, meaning changes, or new
  interfaces, update the affected evidence threads and return to **Audit**

## 7) Report And Evidence Closeout

- generate `.methodologies/clarity/scratch/report.md` from
  `templates/report.md`
- link the evidence index in the report and summarize only overall evidence
  posture plus open or incomplete evidence threads that matter to handoff
- include a compliance summary: change classification counts, scope-drift
  usage, receipt count, register or ledger updates, and evidence status
- finalize `.methodologies/clarity/scratch/evidence/<pass-id>/index.md`:
  - update status
  - update end timestamp when known
  - confirm evidence inventory
  - summarize current run verdict and open follow-ups

## Exit Criteria

- changes are limited to scope plus approved bounded second-order fixes
- changes and reads respect `.methodologies/clarity/status.md` operating scope
  and permissions
- scope-drift budget is respected or explicitly escalated in intake
- audit is complete, polish has been applied, and audit results are reflected
  in `verification-posture`
- baseline claims `intent-target`, `boundary-compliance`, and
  `verification-posture` are captured as evidence with current verdicts
- material conditional claims are either captured as evidence or explicitly
  marked not active for this run
- persona must-answer questions are resolved or explicitly deferred
- open questions, residual uncertainty, and incomplete evidence are captured
- the report explains what changed, why, what was checked, and where supporting
  evidence lives
