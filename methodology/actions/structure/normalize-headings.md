# Action: normalize-headings

Class: structural

Status: compatibility alias of `shape-flow`.

Purpose: Standardize heading levels and naming for scanability and consistency.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Preconditions for `shape-flow` are met.

Actions:
1) Run `shape-flow`.
2) Emphasize heading-level normalization and naming consistency.

Outputs:
- Consistent heading hierarchy and naming within improved page flow.

Quality checks:
- `shape-flow` quality checks pass.
- Heading levels and naming are consistent across scoped sibling pages.

Return-to-intake triggers:
- Any `shape-flow` return-to-intake trigger is encountered.
- Heading normalization requires semantic edits outside structural intent.

Plan/report logging:
- Plan trace line: `normalize-headings | trigger | pages normalized | checks passed`.
- Report summary: heading normalization scope and residual structure issues.
