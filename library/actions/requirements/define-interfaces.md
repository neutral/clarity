# Action: define-interfaces

Class: deterministic

Purpose: Specify system boundaries, inputs, outputs, and contracts.

Inputs:
- Scope (paths/headings/labels)
- Requirements, workflows, or integration notes

Preconditions:
- Boundary surfaces (internal vs external) are identified for the scope.
- Canonical ownership for in-scope interfaces is known or marked pending.

Actions:
1) List the external interfaces (APIs, CLIs, data feeds, on-chain hooks).
2) Define inputs, outputs, data shapes, and versioning expectations.
3) Specify error behavior and retry or failure handling.
4) Link each interface to its owning requirements or workflows.
5) Mark unresolved contract fields as `Question`.

Outputs:
- Requirement and Constraint statements for interface contracts.

Quality checks:
- Each interface includes owner/surface, input/output contract, and failure behavior.
- Interface statements trace to at least one requirement or workflow.
- Unknown contract details are explicitly labeled `Question`.

Return-to-intake triggers:
- Critical interface ownership/authority is unclear.
- Interface definition introduces new semantic decisions outside approved scope.

Plan/report logging:
- Plan trace line: `define-interfaces | trigger | interfaces defined | unresolved contracts | checks passed`.
- Report summary: interface coverage, unknowns, and dependency implications.
