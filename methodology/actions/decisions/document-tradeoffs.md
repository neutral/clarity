# Action: document-tradeoffs

Class: deterministic

Purpose: Capture the tradeoffs that shape design and scope.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Competing goals/constraints in scope are identified.
- Related decision context is available.

Actions:
1) Identify areas where one goal is prioritized over another.
2) Describe the tradeoff and the rationale behind it.
3) Note any consequences or follow-up risks.
4) Link tradeoffs to affected decisions/requirements.

Outputs:
- Explicit Tradeoff statements with rationale.

Quality checks:
- Each tradeoff states what is gained and what is sacrificed.
- Tradeoffs are linked to decision/requirement anchors.
- Consequences and follow-up risks are explicit for high-impact tradeoffs.

Return-to-intake triggers:
- Tradeoff resolution requires new policy/semantic decisions beyond scope.
- Tradeoff implications conflict with locked decisions or done-definition.

Plan/report logging:
- Plan trace line: `document-tradeoffs | trigger | tradeoffs documented | high-impact count | checks passed`.
- Report summary: tradeoff set, consequence profile, and unresolved conflicts.
