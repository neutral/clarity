# Preset: Risk-heavy project wiki -> mitigated project wiki

Aliases: `Risk-heavy project set -> mitigated project set`

Author need: Turn risks into managed, actionable items.
Start: risks are noted but unmanaged.
Target: risks with mitigations and dependency clarity for the project wiki.

Personas:
- Think-as: `principal-engineer`
- Write-for: `cto-feasibility`
- Audit: `security-auditor`, `sre-operator`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- identify-risks
- add-mitigations
- map-dependencies

Conditional actions (triggered):
- If tradeoffs are implicit: document-tradeoffs
- If requirements are missing for mitigation outcomes: define-acceptance-criteria
- If risks stem from unclear interfaces: define-interfaces
- If risks stem from unclear ops targets: define-quality-attributes, define-success-criteria

Deliverables:
- Risk register (or equivalent) with triggers and impact.
- Mitigations mapped per risk.
- Dependencies and sequencing notes for major mitigations.

Checks:
- Risks have triggers/impact and map to concrete mitigations.
- Dependencies and sequencing notes exist for major risks/mitigations.
- Tradeoffs are captured where risk mitigation changes scope or posture.
