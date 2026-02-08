# Preset: Low traceability -> evidence-backed wiki

Aliases: `Low traceability -> evidence-backed docs`

Author need: Link key claims and decisions to sources.
Start: claims exist without references or sources.
Target: evidence-linked claims and cross-referenced pages.

Personas:
- Think-as: `technical-editor`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- add-evidence-links
- cross-link-pages

Conditional actions (triggered):
- If decisions are implicit: document-decisions
- If sources conflict: canonicalize-topic
- If evidence does not exist: apply-labels and capture-open-questions (convert claims into `Assumption` / `Question` rather than inventing sources)

Deliverables:
- Key claims and decisions link to sources (or are labeled as assumptions/questions).
- Cross-links exist so readers can follow the chain of reasoning.

Checks:
- Key claims and decisions link to evidence, ADRs, specs, or other canonical sources.
- Cross-links exist so readers can follow the chain of reasoning.
