# Preset: Overlapping pages -> canonical source

Aliases: `Overlapping docs -> canonical source`

Author need: Collapse overlap into a single authoritative source.
Start: multiple pages cover the same topic with drift.
Target: one canonical page with aligned references.

Personas:
- Think-as: `technical-editor`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `security-auditor`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- canonicalize-topic
- cross-link-pages

Conditional actions (triggered):
- If terms differ across pages: align-terminology, strengthen-definitions
- If overlap exists due to missing structure: split-into-subpages or add-hierarchy
- If a key decision is implicit: document-decisions
- If key claims are unsourced: add-evidence-links

Deliverables:
- One canonical page with the authoritative definition of the topic.
- Other pages reduced to non-overlapping scope and/or linking to the canonical location.

Checks:
- Canonical source is explicit and referenced; overlap is removed (not duplicated).
- No conflicting claims remain across the overlapping pages.
- Cross-links point to the canonical location.
