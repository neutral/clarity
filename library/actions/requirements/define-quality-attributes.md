# Action: define-quality-attributes

Class: deterministic

Purpose: Capture non-functional requirements that shape the design.

Inputs:
- Scope (paths/headings/labels)
- Known constraints or risks

Preconditions:
- Relevant system surfaces/components are identified in scope.
- Constraints and risk context are available or explicitly unknown.

Actions:
1) Identify required quality attributes (performance, reliability, security).
2) Add measurable targets when possible.
3) Note tradeoffs or impacts on scope.
4) Link attributes to related requirements/risks.

Outputs:
- Quality Attribute statements with targets.

Quality checks:
- Each in-scope quality attribute has a target/threshold or explicit unknown.
- Tradeoffs are stated where attributes conflict with other goals.
- Attribute statements are linked to relevant requirements or risks.

Return-to-intake triggers:
- Attribute targets conflict with locked decisions or constraints.
- Defining attributes requires new architectural decisions outside scope.

Plan/report logging:
- Plan trace line: `define-quality-attributes | trigger | attributes defined | unresolved targets | checks passed`.
- Report summary: quality attribute posture, tradeoffs, and open measurement gaps.
