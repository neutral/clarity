# Action: apply-positive-framing

Class: editorial

Purpose: Replace negative or exclusionary definitions with affirmative, descriptive
statements that explain what something is.

Inputs:
- Scope (paths/headings/labels)
- `../../LABELS.md`

Preconditions:
- Sections needing reframing are identified in scope.
- Required Non-Goals/Constraints are already explicit or can be preserved.

Actions:
1) Scan for negative framing such as "is not," "are not," or "not X but Y."
2) Rewrite each instance into a positive definition or description.
3) Add missing details so the new statement stands on its own.
4) Preserve explicit Non-Goals or Constraints when they are the point of the section.
5) Avoid adding new negative framing in edits.

Outputs:
- Definitions and descriptions framed positively.
- Any necessary Non-Goals or Constraints left intact and labeled.

Quality checks:
- Reframed statements preserve original semantic intent.
- Non-Goals/Constraints remain explicit where needed.
- Reframing improves clarity without removing critical prohibitions.

Return-to-intake triggers:
- Positive reframing would weaken required compliance/safety constraints.
- Reframing requires semantic decisions outside editorial scope.

Plan/report logging:
- Plan trace line: `apply-positive-framing | trigger | statements reframed | preserved constraints | checks passed`.
- Report summary: reframing outcomes and any retained negative statements with rationale.
