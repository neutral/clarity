# Clarity Report

Purpose: end-of-run handoff for one Clarity pass.

Installed runtime use:

- `.methodologies/clarity/scratch/report.md`

Use this template after audit and polish. Summarize the pass without
duplicating the evidence index's per-claim inventory.

Date: YYYY-MM-DD
Pass ID:
Owner: `[name]`

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

Scope-drift budget (approved):
Change classification policy (`cosmetic` / `structural` / `semantic` /
`decision-impacting`):
Approval policy for `semantic` / `decision-impacting` changes:
Action receipts required?:
Permissions status path:
Read and write allowed paths (from status):
Read-only paths (from status):
No access paths:
Canonical source register path:
Locked/open ledger path:
Receipts path:
Claim catalog path:
Evidence run path:

## Intent

Intended outcome (one sentence):
Primary audience:
Primary use cases (what they need to do):
Goals:
Non-goals:
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

## Persona Control Outcomes

Think-as control objective outcome:

Think-as failure modes prevented:

- `[item]`

Think-as must-answer resolved:

- `[item]`

Write-for decision enablement outcome:

Write-for failure modes prevented:

- `[item]`

Write-for must-answer resolved:

- `[item]`

Audit control objective outcome:

Audit failure modes prevented:

- `[item]`

Audit must-answer resolved:

- `[item]`

Process-compliance control objective outcome:

Process-compliance failure modes prevented:

- `[item]`

Process-compliance must-answer resolved:

- `[item]`

Must-answer deferred (explicitly labeled as `Question`):

- `[item]`

Persona-based checks run:

- `[check + result]`

## Preset And Audit

Preset used:
Preset source (`../library/presets/overview.md` or custom):
Core actions applied:

- `[action-id]`

Conditional actions applied (triggered):

- Trigger: `[what you observed]` -> `[action-id]`

Added actions applied (via expansion rule):

- Added action: `[action-id]`; Trigger: `[what you observed]`; Artifact:
  `[what it produced]`

Audit bar (checks):

- General checks (all pass runs; from `WORKFLOW.md`):
- Preset checks (selected preset):
- Process-compliance checks (all pass runs; from `WORKFLOW.md`):
- Additional checks (optional):

Audit bar (writing principles, optional):

- `[Audience-first / Single source of truth / Explicit scope / ...]`

## Evidence

Evidence index:
Overall evidence posture:

Open or incomplete evidence threads that matter to handoff:

- `[evidence-id]` | `[reason still open or incomplete]` | `[next step or owner]`

## Compliance Summary

- Dual-audit status (content + process-compliance):
- Change classification count - cosmetic:
- Change classification count - structural:
- Change classification count - semantic:
- Change classification count - decision-impacting:
- Approval records for `semantic` / `decision-impacting` changes:
- Scope-drift used / budget:
- Permissions compliance status (reads/writes vs status permissions):
- Action receipts generated:
- Canonical source register updated:
- Locked/open ledger updated:

## Polish Summary (Cosmetic/Editorial Only)

- `[item]`

## Execution Summary

Pages or areas touched:
Guardrails built or updated (scope boundaries, definitions, label defaults):

- `[item]`

### Changes Summary

- `[item]`

### New Or Updated Definitions

- `[definition or note]`

### Inconsistencies Resolved

- `[item]`

## Open Questions

- `[question]`

## Next Pass

- `[next step]`
