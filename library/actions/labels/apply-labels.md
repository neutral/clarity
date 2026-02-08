# Action: apply-labels

Class: deterministic

Purpose: Apply clarity labels to statements.

Inputs:
- Scope (paths/headings/labels)
- `../../LABELS.md`

Preconditions:
- Scope and exclusions are explicit.
- Active label profile is known (core set by default, domain profile when needed).

Actions:
1) Identify statement roles and natural groupings.
2) Prefer section defaults or a label map per `../../LABELS.md`.
3) If labels are mixed, split into sub-sections or use block overrides; avoid inline labels.
4) Add missing Definitions for overloaded terms.
5) Record any temporary label exceptions to resolve in the same pass.

Outputs:
- Section defaults or a label map, structured label boundaries, and a clearer glossary.

Quality checks:
- Substantive in-scope statements are labelable by section default or block override.
- Inline labels are avoided, or explicitly marked temporary and removed before close.
- Overloaded terms have matching `Definition` entries or open questions.

Return-to-intake triggers:
- Required label meaning conflicts with the current taxonomy and needs policy decision.
- Labeling reveals scope intent changes that exceed the current run parameters.

Plan/report logging:
- Plan trace line: `apply-labels | trigger | sections labeled | exceptions handled | checks passed`.
- Report summary: label defaults applied, overrides used, and taxonomy gaps flagged.
