# Preset: Migration risk -> cutover-ready migration wiki

Aliases: `Migration ambiguity -> cutover-ready docs`

Author need: Convert migration planning docs into an executable cutover-ready wiki.
Start: migration notes exist but operational cutover posture is unclear.
Target: explicit cutover workflow, rollback posture, and migration risk controls.

Personas:
- Think-as: `sre-operator`
- Write-for: `developer-power-user`
- Audit: `principal-engineer`, `security-auditor`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- define-workflows
- map-dependencies
- identify-risks
- add-mitigations

Conditional actions (triggered):
- If interface changes drive migration risk: define-interfaces
- If rollout gates are unclear: define-acceptance-criteria, define-success-criteria
- If sequencing decisions are implicit: document-decisions, document-tradeoffs
- If unknown migration blockers remain: capture-open-questions

Deliverables:
- Cutover workflow with ordered steps and checkpoints.
- Dependency posture for migration-critical systems/teams.
- Risk/mitigation coverage including rollback and degraded-mode handling.

Checks:
- Cutover workflow includes start criteria, execution checkpoints, and rollback path.
- Critical migration dependencies include owner/status/timeline/sequencing.
- High-impact migration risks have explicit mitigations or escalations.
