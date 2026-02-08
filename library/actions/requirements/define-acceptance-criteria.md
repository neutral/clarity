# Action: define-acceptance-criteria

Class: deterministic

Purpose: Make requirements testable and verifiable.

Inputs:
- Scope (paths/headings/labels)
- Requirement statements

Preconditions:
- Requirement statements exist and are in scope.
- Requirement ownership is known or explicitly pending.

Actions:
1) Add Acceptance Criteria for each requirement.
2) Ensure criteria are specific and testable.
3) Remove criteria that duplicate goals or rationale.
4) Link criteria to requirement IDs or anchors.

Outputs:
- Acceptance Criteria aligned to requirements.

Quality checks:
- Each in-scope requirement has at least one acceptance criterion or explicit deferral.
- Criteria use observable, testable conditions (not vague intent).
- Criteria do not restate goals/rationale as tests.

Return-to-intake triggers:
- Requirement intent is too ambiguous to define testable criteria.
- Criteria definition implies scope/solution changes beyond approved run parameters.

Plan/report logging:
- Plan trace line: `define-acceptance-criteria | trigger | requirements covered | deferrals | checks passed`.
- Report summary: coverage rate and unresolved criteria gaps.
