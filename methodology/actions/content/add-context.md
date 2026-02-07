# Action: add-context

Class: editorial

Purpose: Add background and framing so readers can orient quickly.

Inputs:
- Scope (paths/headings/labels)
- Audience and intended use cases

Preconditions:
- Audience and intended task are explicit.
- Context claims are source-backed or explicitly uncertain.

Actions:
1) Add brief context on the problem, system, or domain.
2) Clarify who the page/section is for and what it enables.
3) Add or tighten any needed Definitions for key terms.
4) Keep additions concise and avoid introducing new decisions.

Outputs:
- Stronger framing and orientation for readers.

Quality checks:
- Added context improves orientation without changing decisions or requirements.
- New factual context is source-backed or labeled `Assumption`/`Question`.
- Definitions remain consistent with canonical terminology.

Return-to-intake triggers:
- Context additions require new semantic/decision claims outside scope.
- Key contextual claims conflict with canonical sources.

Plan/report logging:
- Plan trace line: `add-context | trigger | sections framed | semantic escalations | checks passed`.
- Report summary: context improvements and any unresolved framing questions.
