# Action: clarify-scope

Class: deterministic

Purpose: Clarify what is in and out of scope.

Inputs:
- Scope (paths/headings/labels)
- Goals and constraints

Preconditions:
- Intended outcome and non-goals are available.
- Current exclusions and drift budget are known.

Actions:
1) Identify implicit scope boundaries.
2) Add explicit Goal and Non-Goal statements.
3) Add Scope and Out-of-Scope statements where useful.
4) Move optional items into a future section.
5) Flag boundary ambiguities as `Question`.

Outputs:
- Clear scope boundaries.

Quality checks:
- In-scope and out-of-scope boundaries are explicit and non-overlapping.
- Goals, Non-Goals, and Scope statements are not conflated.
- Boundary uncertainties are captured as prioritized questions.

Return-to-intake triggers:
- Scope boundary changes alter intended outcome or done-definition.
- Required out-of-scope mechanical work exceeds approved drift budget.

Plan/report logging:
- Plan trace line: `clarify-scope | trigger | boundaries clarified | ambiguity count | checks passed`.
- Report summary: scope boundary updates and open boundary questions.
