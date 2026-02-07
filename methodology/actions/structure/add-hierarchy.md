# Action: add-hierarchy

Class: structural

Purpose: Turn a flat folder of documents into a navigable hierarchy (hub pages +
subfolders/subpages) so readers can orient quickly and drill down by topic
instead of reading files one-by-one.

Inputs:
- Scope (paths/headings/labels) and any explicit exclusions
- Primary audience + what they need to do
- Any “must keep” entrypoints (existing links, README, index page)

Preconditions:
- Scope and exclusions are explicit.
- Canonical navigation entrypoint policy is known.
- Must-keep entrypoints are identified before moves.

Actions:
1) Inventory the scoped docs:
   - list files and 1-line topic summaries
   - identify overlap, missing “entrypoint,” and oversized docs
2) Propose 2–3 hierarchy options during intake (pick one and record it in the plan):
   - Option A (Minimal moves): add a hub page that groups existing files; keep files where they are.
   - Option B (Canonical folder + stubs): create a new canonical subfolder with a hub + grouped subpages;
     convert old paths into short stubs that link to the canonical pages.
   - Option C (Two-level nav): add a hub plus 2–4 category sub-index pages (no deep moves) and refactor
     content into those category pages over time.
3) Choose a single canonical navigation entrypoint:
   - add a hub page (e.g., `design.md` or `index.md`) that explains the purpose, audience, and how to read.
4) Create the new hierarchy:
   - group topics into 3–7 buckets (avoid over-nesting)
   - create subfolders or sub-index pages per bucket
   - move/split content so each page has a single job
5) Preserve compatibility:
   - if paths change, update inbound links and cross-links to point to the new canonical location
   - stubs at old paths are optional (use only if repo policy requires or external links are expected)
6) Add navigation affordances:
   - “Start here” section on the hub
   - “Related / Next” links on subpages
   - keep terminology consistent; add/extend a glossary if needed
7) Record hierarchy delta:
   - old path -> new canonical path mapping
   - stubs created (if any)
   - major link updates

Outputs:
- A hub page plus a small number of subpages/subfolders that form a clear hierarchy.
- Old entrypoints preserved (links updated; stubs optional when moves occurred).
- Updated cross-links and a canonical “source of truth” per topic.
- Before/after hierarchy map for the scoped area.

Quality checks:
- Exactly one canonical navigation entrypoint exists for the hierarchy.
- No orphan pages are introduced; every subpage is reachable from hub/category pages.
- Moved paths are handled by updated links and/or approved stubs.
- Structural reorganization does not introduce new semantic or decision changes.

Return-to-intake triggers:
- Chosen hierarchy option conflicts with scope, policy, or intended outcome.
- Required moves/link updates exceed approved drift budget.
- Canonical topic ownership is unclear across sibling pages.

Plan/report logging:
- Plan trace line: `add-hierarchy | trigger | hierarchy option | paths remapped | checks passed`.
- Report summary: hierarchy changes, compatibility handling, and unresolved navigation risks.
