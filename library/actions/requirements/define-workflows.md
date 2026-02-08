# Action: define-workflows

Class: deterministic

Purpose: Make end-to-end workflows explicit and testable.

Inputs:
- Scope (paths/headings/labels)
- Requirements, user needs, or scenarios

Preconditions:
- Primary actors and scenario boundaries are identified.
- Requirement sources for workflow steps are available.

Actions:
1) Identify the core workflows or scenarios covered by the project wiki.
2) List the ordered actions and actors involved.
3) Call out state transitions or checkpoints where evidence is produced.
4) Link each workflow to requirements or acceptance criteria.
5) Label unclear workflow branches as `Question`.

Outputs:
- Workflow and Scenario statements tied to requirements.

Quality checks:
- Each workflow has explicit start, end, actor(s), and ordered steps.
- Workflow checkpoints align with requirement or acceptance anchors.
- Branches/exceptions with unknown behavior are explicitly labeled.

Return-to-intake triggers:
- Critical workflow ownership or sequencing is unclear across teams.
- Workflow definition requires scope expansion beyond approved boundaries.

Plan/report logging:
- Plan trace line: `define-workflows | trigger | workflows defined | unresolved branches | checks passed`.
- Report summary: workflow coverage, requirement links, and open branch questions.
