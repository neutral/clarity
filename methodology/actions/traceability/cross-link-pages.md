# Action: cross-link-pages

Class: structural

Purpose: Connect related pages to reduce duplication and drift.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Related pages/sections in scope are identified.
- Canonical source location is known for overlapping topics.

Actions:
1) Identify related pages or sections.
2) Add references where context overlaps.
3) Replace duplicated content with a single canonical source.
4) Verify link destinations and navigation paths.

Outputs:
- Cross-links between related pages and reduced duplication.
- Cross-link map (source page -> related/canonical destinations).

Quality checks:
- Related in-scope pages have explicit cross-links where context overlaps.
- Canonical source links are used instead of duplicating the same content.
- No broken links are introduced by cross-link updates.

Return-to-intake triggers:
- Canonical source ownership is unclear for a high-impact topic.
- Link updates required outside scope exceed approved drift budget.

Plan/report logging:
- Plan trace line: `cross-link-pages | trigger | links added/updated | duplicate sections reduced | checks passed`.
- Report summary: cross-link coverage and unresolved canonical routing issues.
