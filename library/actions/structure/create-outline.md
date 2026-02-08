# Action: create-outline

Class: structural

Purpose: Create or refine an outline that makes the page/wiki structure explicit
and reveals missing sections.

Inputs:
- Scope (paths/headings/labels)
- Page/wiki goals and audience

Preconditions:
- Scope and exclusions are explicit.
- Audience task and page intent are known.

Actions:
1) Extract current headings into a list.
2) Group sections into a logical order (context, goals, decisions, design, risks).
3) Add placeholder headings where key sections are missing.
4) Reorder headings to match the intended narrative flow.
5) Label unresolved placeholders as `Question` or `Assumption`.

Outputs:
- A clear outline with updated heading order.
- Placeholder headings for missing content.
- Before/after outline snapshot for the scoped pages.

Quality checks:
- Outline order supports fast orientation for the target audience.
- Heading hierarchy is consistent and does not skip structure levels.
- Placeholders are explicitly labeled (not implied as completed content).

Return-to-intake triggers:
- Outline changes imply outcome/scope drift beyond approved parameters.
- Core section ownership is unclear across overlapping pages.

Plan/report logging:
- Plan trace line: `create-outline | trigger | outlines updated | placeholder count | checks passed`.
- Report summary: outline improvements and unresolved structure questions.
