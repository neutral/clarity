# Action: capture-alternatives

Class: deterministic

Purpose: Document alternative paths considered and why they were not chosen.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Target decision points are identified.
- Evaluation criteria/constraints are available or explicitly unknown.

Actions:
1) List viable alternatives for key decisions.
2) Record evaluation criteria and constraints.
3) Note why each alternative was not selected.
4) Link alternatives to final decision or open question.

Outputs:
- Alternative records tied to decisions and criteria.

Quality checks:
- Alternatives are documented for each key decision point (or explicitly `none`).
- Rejection/selection reasoning is explicit and criteria-based.
- Alternatives link to decision status (`locked` / `open`) where applicable.

Return-to-intake triggers:
- Evaluation criteria are missing for high-impact alternatives.
- Alternatives reveal scope/outcome conflicts that require owner direction.

Plan/report logging:
- Plan trace line: `capture-alternatives | trigger | alternatives captured | decision links | checks passed`.
- Report summary: alternatives considered, decision linkage, and unresolved evaluations.
