# Action: document-decisions

Class: deterministic

Purpose: Make key decisions explicit and traceable.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Decision points in scope are identified.
- Decision authority/owner is known or explicitly pending.

Actions:
1) List unresolved or implicit decision points.
2) Record the decision, rationale, and scope.
3) Link to related tradeoffs or alternatives if applicable.
4) Mark decision status (`locked` / `open`) where known.

Outputs:
- Clear Decision statements with rationale and scope.

Quality checks:
- Each documented decision includes context/rationale/scope.
- Decision status (`locked` / `open`) is explicit or marked `Question`.
- Related tradeoffs/alternatives are linked where relevant.

Return-to-intake triggers:
- Decision authority is unclear for a high-impact item.
- Documenting the decision would contradict locked sources or require approval.

Plan/report logging:
- Plan trace line: `document-decisions | trigger | decisions captured | locked/open updates | checks passed`.
- Report summary: decisions documented, status posture, and unresolved authorities.
