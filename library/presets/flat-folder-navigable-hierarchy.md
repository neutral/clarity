# Preset: Flat folder -> navigable hierarchy

Author need: Introduce a lightweight hierarchy (hub pages + subfolders/subpages) so a flat set of documents becomes readable top-down and discoverable by topic.
Start: a folder of docs that are readable only "one file at a time" (even if there is a single index page).
Target: a canonical hub page + 2nd-level hierarchy (category pages and/or subfolders), with oversized docs split into drill-down pages and old entrypoints preserved (update inbound links; stubs optional per repo policy).

Personas:
- Think-as: `architect`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- add-hierarchy
- cross-link-pages
- shape-flow

Conditional actions (triggered):
- If some files are too large: split-into-subpages
- If multiple files overlap: canonicalize-topic
- If terminology is inconsistent: strengthen-definitions, align-terminology
- If scope boundaries are unclear: clarify-scope
- If unknowns are blocking: capture-open-questions
- If writing is hard to scan: improve-writing

Deliverables:
- One canonical hub ("start here") with navigation by buckets.
- 3-7 stable buckets (folders and/or category pages), each with a clear purpose.
- Each page has a single job (avoid "misc grab bag" pages where possible).

Checks:
- Navigation: there is a canonical hub ("start here") and no orphan pages.
- Hierarchy: bucket names are stable and scannable; avoid deep nesting.
- Canonicality: each topic has a single "source of truth" page with cross-links.
- Link hygiene: moved/split pages have updated inbound links and consistent nav paths.
