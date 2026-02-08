# Action: triage-support-signals

Class: deterministic

Purpose: Turn recurring support signals into a prioritized triage-to-resolution
flow with clear ownership and escalation paths.

Inputs:
- Scope (paths/headings/labels)
- Support signals (tickets, incidents, recurring requests, failure reports)
- Existing workflows/runbooks (if any)

Preconditions:
- Support signal sources are identified for the scoped area.
- Ownership/escalation path is known or explicitly pending.
- Severity/priority model is defined or can be defined in scope.

Actions:
1) Build support signal inventory:
   - signal ID/type
   - source/channel
   - frequency or recurrence indicator
   - observed impact
2) Classify and prioritize:
   - severity
   - urgency
   - priority using severity x urgency
3) Define triage-to-resolution path:
   - intake step
   - triage decision points
   - owner handoff points
   - resolution/closure criteria
4) Add escalation and feedback loops:
   - escalation triggers and owners
   - follow-up loop to reduce recurrence
5) Record unresolved blockers as `Question`.

Outputs:
- Prioritized support signal register.
- Triage-to-resolution workflow with ownership and escalation points.
- Unresolved blockers/follow-ups list.

Quality checks:
- High-priority recurring signals have explicit owners and resolution paths.
- Triage workflow includes escalation triggers and closure criteria.
- Priority model is explicit and applied consistently to scoped signals.
- Open blockers are captured with owner/follow-up or explicit owner gap.

Return-to-intake triggers:
- Ownership for critical support paths is unclear across teams.
- Required triage flow changes exceed approved scope or policy bounds.
- Critical unresolved signals imply changed intended outcome/done-definition.

Plan/report logging:
- Plan trace line: `triage-support-signals | trigger | signals triaged | high-priority unresolved | checks passed`.
- Report summary: signal coverage, triage posture, and unresolved escalations.
