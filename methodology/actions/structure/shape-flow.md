# Action: shape-flow

Class: structural

Purpose: Normalize heading structure and narrative flow so pages are readable
top-down and consistent across sibling docs.

Inputs:
- Scope (paths/headings/labels)
- Audience expectations and page intent

Preconditions:
- Scope includes the pages/sections whose flow is being normalized.
- Page intent and primary audience task are known.
- Canonical page/topic location is known for duplicated content.

Actions:
1) Capture baseline structure:
   - before outline snapshot (H1-H3)
   - current section order for each scoped page
2) Normalize heading structure:
   - fix heading depth/order
   - ensure parallel heading grammar
   - split mixed-intent sections where needed
3) Improve narrative flow:
   - reorder sections from context -> decisions/requirements -> details
   - group related concepts and remove duplicates
   - add short transitions where context shifts
4) Repair navigation after any move/split:
   - update local links and hub references
   - ensure moved content has a canonical destination
5) Verify scannability:
   - headings are consistent and predictable across sibling docs
   - section order supports fast orientation for the target reader

Outputs:
- Before/after outline map for scoped pages.
- Consistent heading hierarchy and naming.
- Improved section ordering and page flow.
- Link update list for moved or split sections/pages.

Quality checks:
- No heading level jumps greater than one level (for H1-H3 transitions).
- Sibling pages use consistent heading grammar for equivalent sections.
- No broken links or orphaned moved sections are introduced.
- Structural edits do not introduce new decisions or semantic claim changes.

Return-to-intake triggers:
- Flow normalization requires expanding scope beyond approved boundaries.
- A structural conflict reveals unclear canonical ownership for a topic.
- Reordering requires semantic edits that exceed structural intent.

Plan/report logging:
- Plan trace line: `shape-flow | trigger | pages normalized | links updated | checks passed`.
- Report summary: before/after structure changes and navigation impact.
