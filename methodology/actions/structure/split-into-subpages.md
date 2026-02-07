# Action: split-into-subpages

Class: structural

Purpose: Split oversized pages into a hub + drill-down pages so each page has a
single job and the folder is readable top-down (summary → details).

Inputs:
- Scope (paths/headings) and the target page(s) to split
- Target hierarchy choice (from `add-hierarchy`)
- “Must preserve” anchors/links (if any)

Preconditions:
- Split candidate pages are identified and in scope.
- Canonical hub destination is known before moving sections.
- Entry points that must remain stable are identified.

Actions:
1) Identify split candidates:
   - pages with multiple unrelated sections
   - pages with 3+ major dimensions mixed (e.g., interfaces + workflow + ops + risks)
2) Define the new page set:
   - create a hub page that contains:
     - executive summary
     - scope/non-goals
     - navigation links to drill-down pages
   - create drill-down pages aligned to stable seams, e.g.:
     - interfaces
     - workflows
     - artifacts/data model
     - operations
     - risks
     - implementation plan
     - glossary
3) Move content with minimal rewriting:
   - cut/paste sections into the appropriate drill-down pages
   - keep the hub page concise; replace moved content with links
4) Preserve link stability:
   - if the original page path was referenced elsewhere, convert it into a stub that points to the new hub
   - avoid deep anchor dependencies; prefer page-level links after the split
5) De-duplicate:
   - keep one canonical location for each fact/definition
   - use cross-links instead of repeating details across pages
6) Record structural deltas:
   - moved sections/pages
   - preserved stubs/entrypoints
   - updated links

Outputs:
- A hub page and a small set of drill-down pages replacing a single oversized doc.
- Backwards-compatible stubs and updated links where needed.
- Split map (source page -> destination page/section).

Quality checks:
- Each moved topic has one canonical destination page.
- Hub page contains valid links to all drill-down pages.
- No orphaned sections or broken links are introduced.
- Structural split does not introduce new semantic claims or decisions.

Return-to-intake triggers:
- Split requires scope expansion beyond approved boundaries.
- Canonical ownership for moved content is unclear.
- Required compatibility/link updates exceed approved drift budget.

Plan/report logging:
- Plan trace line: `split-into-subpages | trigger | pages split | links updated | checks passed`.
- Report summary: split structure, compatibility handling, and unresolved ownership items.
