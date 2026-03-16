# Clarity Plan

Purpose: shared plan and log for one Clarity pass.

Installed runtime use:

- `.methodologies/clarity/scratch/plan.md`

Use this template when a pass enters intake. Keep required fields explicit and
leave optional fields blank rather than inventing values.

Date started: YYYY-MM-DD
Pass ID:
Owner: `[name]`
Status: `[Intake / Planned / In progress / Done]`

## Scope

Scope ID:
Paths:
Headings:
Labels:
Exclusions:
Out of scope:
Second-order fixes outside scope (default allowed if bounded/mechanical; e.g.,
link updates, terminology alignment):

## Compliance Controls

Scope-drift budget (max out-of-scope mechanical changes + unit):
Change classification policy (`cosmetic` / `structural` / `semantic` /
`decision-impacting`):
Approval policy for `semantic` / `decision-impacting` changes:
Action receipts required? (recommended: yes):
Permissions status path (default `.methodologies/clarity/status.md`):
Read and write allowed paths (from status):
Read-only paths (from status):
No access paths (from status):
Canonical source register path (default
`.methodologies/clarity/scratch/canonical-sources.md`):
Locked/open ledger path (default
`.methodologies/clarity/scratch/decision-ledger.md`):
Receipts path (default `.methodologies/clarity/scratch/receipts/`):
Claim catalog path (default `.methodologies/clarity/library/claims/README.md`):
Evidence run path (default
`.methodologies/clarity/scratch/evidence/<pass-id>/`):

## Intent

Intended outcome (one sentence):
Primary audience:
Primary use cases (what they need to do):
Goals:
Non-goals:
Known confusions or misinterpretation risks:
Overloaded or frequently misunderstood terms:
Constraints (time, format, policy):
Canonical sources (if conflicts appear):
Fixed vs open decisions:
Definition of done for this pass:
Deadlines or dependencies:

## Personas (Per Preset)

Think-as persona (default from preset):
Write-for persona (default from preset):
Audit persona(s) (default from preset):
Process-compliance audit persona (recommended `process-compliance`):
Polish persona (default from preset; recommended `technical-editor`):
Persona override rationale (optional):

## Persona Control Mapping

Think-as control objective:

Think-as failure modes to prevent:

- `[item]`

Think-as must-answer questions:

- `[item]`

Write-for decision owner and required action:

Write-for failure modes to prevent:

- `[item]`

Write-for must-answer questions:

- `[item]`

Audit control objective(s):

Audit failure modes to prevent:

- `[item]`

Audit must-answer questions:

- `[item]`

Process-compliance control objective:

Process-compliance failure modes to prevent:

- `[item]`

Process-compliance must-answer questions:

- `[item]`

Persona-based checks for audit:

- `[check]`

## Intake Log

- `[question / clarification / decision]`

## Baseline Scan (Within Scope)

Current clarity state (`WIP`, `draft`, `stable`):
Hotspots (overlap, drift, missing sections, weak definitions):

## Plan

Preset selected:
Preset source (`../library/presets/overview.md` or custom):
Core actions (from preset; minimum set):

- `[action-id]`

Conditional actions (from preset; apply when triggered):

- Trigger: `[what you observed]` -> `[action-id]`

Added actions (via expansion rule; record why):

- Added action: `[action-id]`; Trigger: `[what you observed]`; Artifact:
  `[what it produces]`

Audit bar (checks):

- General checks (all pass runs; from `WORKFLOW.md`):
- Preset checks (selected preset):
- Process-compliance checks (all pass runs; from `WORKFLOW.md`):
- Additional checks (optional):

Audit bar (writing principles, optional):

- `[Audience-first / Single source of truth / Explicit scope / ...]`

## Execution Log

- `[date / change / decision]`

## Change Classification Log (Rolling)

- Cosmetic:
- Structural:
- Semantic:
- Decision-impacting:

## Action Receipts (Rolling)

- `[action-id]` -> `.methodologies/clarity/scratch/receipts/[receipt-file].md`

## Compliance Status (Rolling)

- Scope-drift used / budget:
- Permissions compliance status (reads/writes vs status permissions):
- Approval records for `semantic` / `decision-impacting` changes:
- Canonical source register updated:
- Locked/open ledger updated:

## Changes Summary (Rolling)

- `[item]`

## New Or Updated Definitions

- `[definition or note]`

## Inconsistencies Resolved

- `[item]`

## Open Questions (Rolling)

- `[question]`

## Next Pass

- `[next step]`
