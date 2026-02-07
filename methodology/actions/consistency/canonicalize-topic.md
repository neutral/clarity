# Action: canonicalize-topic

Class: deterministic

Purpose: Resolve overlap and conflicts for a topic by selecting a canonical source
and aligning all scoped pages to it.

Inputs:
- Scope (paths/headings/labels)
- Canonical source register (`.clarity/workflow/canonical-sources.md` when available)
- Locked/open decisions (`.clarity/workflow/decision-ledger.md` when relevant)

Preconditions:
- Scope and exclusions are explicit.
- Source authority order is defined (register or explicit owner direction).
- Locked decisions for in-scope topics are identified.

Actions:
1) Build a topic overlap table:
   - topic
   - pages/sections where it appears
   - conflict type (terminology, numbers, claims, status)
   - candidate canonical source
   - authority sources checked
2) Choose one canonical source per topic:
   - use source priority order from the canonical source register
   - if authority is unclear, open an intake question and stop
3) Reconcile all non-canonical instances:
   - remove conflicting statements
   - replace duplication with links to canonical sections
   - align terminology to canonical definitions
4) Record per-topic resolution lines in the plan/report draft:
   - topic
   - canonical source selected
   - files/sections aligned
   - unresolved authority (if any)
5) Verify completion:
   - unresolved conflicts = 0 for in-scope topics (unless explicitly deferred)
   - cross-links to canonical source exist for aligned pages

Outputs:
- Canonical topic mapping with conflict resolutions:
  - Topic
  - Canonical source
  - Authority sources checked
  - Files/sections aligned
  - Resolution status
- Aligned pages with one source of truth per topic.
- Explicit open questions for unresolved source authority.

Quality checks:
- Each overlapping in-scope topic has exactly one canonical source.
- No in-scope conflict remains unresolved unless explicitly labeled `Question`.
- Every non-canonical statement that remains points to the canonical section.
- No locked decision is contradicted by reconciliation changes.

Return-to-intake triggers:
- Two authoritative sources conflict and precedence is not defined.
- Reconciliation would change a locked decision's meaning.
- Required cross-scope mechanical updates would exceed approved drift budget.

Plan/report logging:
- Plan trace line: `canonicalize-topic | trigger | sources used | topics aligned | checks passed`.
- Report summary: topics canonicalized, files aligned, unresolved authority questions.
