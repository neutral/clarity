# Action: add-mitigations

Class: deterministic

Purpose: Pair risks with concrete mitigation actions.

Inputs:
- Scope (paths/headings/labels)
- Risk statements

Preconditions:
- Risk statements exist and are in scope.
- Risk owners are known or explicitly pending.

Actions:
1) For each risk, add one or more Mitigation statements.
2) Note owners or triggers when possible.
3) Track residual risk if mitigation is partial.
4) Link mitigations to affected requirements/workflows where relevant.

Outputs:
- Mitigation statements linked to risks.

Quality checks:
- Each high-impact risk has at least one mitigation or explicit deferral.
- Mitigations include owner/status/trigger or explicit unknown marker.
- Residual risk is stated when mitigation is partial.

Return-to-intake triggers:
- Mitigations require scope/decision changes beyond approved boundaries.
- Critical risk cannot be mitigated without changing done-definition or timeline.

Plan/report logging:
- Plan trace line: `add-mitigations | trigger | risks covered | residual high-risk count | checks passed`.
- Report summary: mitigation coverage, residual risk posture, and escalations.
