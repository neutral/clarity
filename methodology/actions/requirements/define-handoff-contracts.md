# Action: define-handoff-contracts

Class: deterministic

Purpose: Make cross-team handoffs explicit through documented contracts for
ownership, inputs/outputs, acceptance gates, and escalation.

Inputs:
- Scope (paths/headings/labels)
- Team boundaries and responsibilities
- Existing interfaces/workflows/requirements (if any)

Preconditions:
- In-scope handoff boundaries are identified.
- Participating teams/owners are known or explicitly pending.
- Canonical source for handoff policy is defined when available.

Actions:
1) Enumerate handoff points:
   - from team/owner
   - to team/owner
   - trigger event
2) Define contract per handoff point:
   - required input artifacts/data
   - expected output artifact/state
   - acceptance criteria
   - SLA/target timing (or explicit unknown)
3) Define failure and escalation posture:
   - rejection/failure conditions
   - escalation owner/path
   - fallback or recovery behavior
4) Link contracts to interfaces/workflows/requirements.
5) Mark unresolved contract fields as `Question`.

Outputs:
- Handoff contract register with ownership, I/O, acceptance gates, and escalation.
- Linked interface/workflow anchors for each contract.
- Explicit unresolved contract gaps.

Quality checks:
- Every in-scope cross-team handoff has owner, trigger, input/output, and acceptance fields.
- High-impact handoffs define escalation path and fallback behavior.
- Contract links to related interfaces/workflows are complete.
- Unknown fields are explicitly labeled and not implied as decided.

Return-to-intake triggers:
- Handoff ownership authority is unclear for critical-path contracts.
- Contract definition reveals policy/decision conflicts requiring owner direction.
- Required contract scope exceeds approved boundaries.

Plan/report logging:
- Plan trace line: `define-handoff-contracts | trigger | contracts defined | critical unresolved | checks passed`.
- Report summary: handoff coverage, escalation posture, and unresolved ownership/policy conflicts.
