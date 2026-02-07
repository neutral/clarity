# Preset: Design exploration -> decision-ready

Author need: Make design choices explicit and reviewable.
Start: alternatives discussed, decisions implicit.
Target: explicit decisions, tradeoffs, and alternatives.

Personas:
- Think-as: `architect`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- document-decisions
- document-tradeoffs
- clarify-scope

Conditional actions (triggered):
- If alternatives were considered: capture-alternatives
- If decisions rely on external info: add-evidence-links
- If the design is scattered across docs: canonicalize-topic, cross-link-pages
- If requirements are missing: derive-requirements, define-acceptance-criteria
- If risk posture dominates: identify-risks, add-mitigations

Deliverables:
- A canonical decision record per major choice (short but explicit).
- Tradeoffs tied to goals/constraints.
- "Locked vs open" list for the scoped area.

Checks:
- Decisions are explicit with rationale and scope; "locked vs open" is clear.
- Tradeoffs connect back to goals/constraints (not just preferences).
- Alternatives are recorded when relevant, including why they were not chosen.
