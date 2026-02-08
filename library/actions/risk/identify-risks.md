# Action: identify-risks

Class: deterministic

Purpose: Surface risks that could impact scope, design, or delivery.

Inputs:
- Scope (paths/headings/labels)
- Known constraints and dependencies

Preconditions:
- Scope and relevant dependencies are identified.
- Risk ownership model exists (or owner pending is allowed explicitly).

Actions:
1) List risks with triggers and potential impact.
2) Label each risk with scope (page/area, component, system).
3) Link risks to related decisions or requirements.
4) Rank risks by impact and likelihood.

Outputs:
- Risk statements with triggers and impact.

Quality checks:
- Each risk includes trigger, impact, and scope.
- High-impact risks have an owner or explicit owner gap.
- Risks link to related requirements/decisions/dependencies where relevant.

Return-to-intake triggers:
- Critical risks materially change scope, milestone, or done-definition.
- Risk authority/ownership is unclear for critical-path risks.

Plan/report logging:
- Plan trace line: `identify-risks | trigger | risks captured | critical count | checks passed`.
- Report summary: risk profile, ranking, and unresolved ownership gaps.
