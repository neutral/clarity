# Action: align-cross-pages

Class: deterministic

Status: compatibility alias of `canonicalize-topic`.

Purpose: Align overlapping topics across pages/files to avoid drift and duplication.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Preconditions for `canonicalize-topic` are met.

Actions:
1) Run `canonicalize-topic`.
2) Emphasize overlap inventory and canonical-link updates for cross-page navigation.

Outputs:
- Cross-page alignment and reduced duplication via canonical topic mapping.

Quality checks:
- Canonical topic mapping exists for all in-scope overlaps.
- Cross-page navigation points to canonical sections after alignment.

Return-to-intake triggers:
- Any `canonicalize-topic` return-to-intake trigger is encountered.

Plan/report logging:
- Plan trace line: `align-cross-pages | trigger | overlaps aligned | links updated | checks passed`.
- Report summary: cross-page alignment impact and unresolved authority items.
