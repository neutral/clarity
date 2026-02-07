# Preset: Targeted update -> propagation-consistent wiki

Aliases: `Policy update -> propagation-consistent docs`, `Change update -> fully propagated docs`

Author need: Verify and remediate propagation of a defined update across all required documentation surfaces.
Start: one or more updates exist, but propagation may be partial/stale/conflicting.
Target: all required surfaces are aligned to canonical sources, with unresolved conflicts explicitly tracked.

Personas:
- Think-as: `propagation-auditor`
- Write-for: `technical-editor`
- Audit: `process-compliance`, `principal-engineer`
- Polish: `technical-editor`

Core actions (minimum):
- clarify-scope
- verify-propagation
- capture-open-questions

Conditional actions (triggered):
- If conflicts reveal duplicated authority: canonicalize-topic
- If terminology drift appears across surfaces: align-terminology, strengthen-definitions
- If navigation or moved references are broken: cross-link-pages
- If propagation requires structural realignment: shape-flow
- If update introduces new/changed decisions: document-decisions
- If claims need support during propagation: add-evidence-links

Deliverables:
- Propagation matrix per change item (required surfaces + status).
- Remediated docs for missing/stale propagation items.
- Explicit unresolved conflicts/questions with owner follow-ups.

Checks:
- Each change item has required-surface coverage (no unchecked required surfaces).
- No unresolved conflicts remain unless explicitly labeled `Question`.
- Canonical source and locked/open decision posture remain consistent after remediation.
- Compliance artifacts (classification, receipts, ledger/register updates) are complete for substantive changes.
