# Action: verify-propagation

Class: deterministic

Purpose: Detect and close propagation gaps for a defined change set across all
required documentation surfaces in scope.

Inputs:
- Scope (paths/headings/labels)
- Change set to propagate (policy/rule/term/decision updates)
- Canonical source register (`.clarity/workflow/canonical-sources.md` when available)
- Locked/open decision ledger (`.clarity/workflow/decision-ledger.md` when relevant)

Preconditions:
- The change set is explicit (what changed, why, and source of truth).
- Required propagation surfaces are identified (for example: README, setup, workflow, templates, presets, personas, actions).
- Canonical source authority is defined for each change item.

Actions:
1) Build a propagation matrix for each change item:
   - change item ID
   - canonical source
   - required surfaces
   - expected statement/field shape per surface
2) Inspect each required surface and classify current state:
   - consistent
   - missing
   - stale
   - conflicting
3) Apply bounded fixes for `missing` and `stale` states:
   - update language/fields to match canonical source
   - preserve surface-appropriate wording while keeping semantics identical
4) Resolve or escalate `conflicting` states:
   - if source precedence is clear, align to canonical source
   - if source precedence is unclear, stop and open intake question
5) Record outcomes:
   - matrix status by change item and surface
   - unresolved items and explicit follow-ups

Outputs:
- Propagation matrix with per-surface status and resolution state.
- Updated docs across required surfaces with aligned canonical statements.
- Explicit unresolved conflicts labeled as `Question`.

Quality checks:
- Every change item has 100% required surfaces accounted for in the matrix.
- No `conflicting` state remains unresolved unless explicitly labeled `Question`.
- Updated surfaces do not contradict locked decisions or canonical sources.
- Propagation status and remediation outcomes are reflected in plan/report.

Return-to-intake triggers:
- Canonical source precedence is unclear for any high-impact conflict.
- Required propagation scope exceeds approved scope-drift budget.
- Propagation reveals a new semantic/decision-impacting policy change not previously approved.

Plan/report logging:
- Plan trace line: `verify-propagation | trigger | change items checked | unresolved conflicts | checks passed`.
- Report summary: propagation coverage, surfaces remediated, and unresolved conflicts/follow-ups.
