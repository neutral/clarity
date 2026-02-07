# Action: derive-requirements

Class: deterministic

Purpose: Convert goals and needs into explicit requirements.

Inputs:
- Scope (paths/headings/labels)
- Goals, user needs, and constraints

Preconditions:
- Goals/user needs for scope are explicit.
- Constraint context is available for requirement shaping.

Actions:
1) Translate goals and needs into Requirement statements.
2) Remove solution bias unless the solution is fixed.
3) Link each requirement to its source goal or need.
4) Flag unresolved requirement sources as `Question`.

Outputs:
- Requirement statements linked to sources.

Quality checks:
- Each requirement traces to at least one goal/user need/constraint.
- Requirements describe expected behavior/constraint, not implementation preference.
- Trace links are explicit and consistent in scope.

Return-to-intake triggers:
- Goals/needs conflict and cannot be reconciled within current run parameters.
- Derivation requires changing fixed decisions or intended outcome.

Plan/report logging:
- Plan trace line: `derive-requirements | trigger | requirements derived | trace coverage | checks passed`.
- Report summary: requirement set, traceability coverage, and unresolved source conflicts.
