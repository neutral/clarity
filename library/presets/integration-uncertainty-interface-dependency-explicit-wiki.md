# Preset: Integration uncertainty -> interface-dependency explicit wiki

Aliases: `Integration ambiguity -> interface/dependency explicit docs`

Author need: Remove integration ambiguity by making interfaces and dependencies explicit.
Start: integration points are implied or scattered.
Target: clear interface contracts, dependency posture, and integration workflow.

Personas:
- Think-as: `principal-engineer`
- Write-for: `developer-power-user`
- Audit: `architect`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- define-interfaces
- map-dependencies
- define-workflows

Conditional actions (triggered):
- If requirements are still implicit: derive-requirements
- If validation gates are unclear: define-acceptance-criteria
- If integration risks are high: identify-risks, add-mitigations
- If terminology conflicts exist across teams: align-terminology, strengthen-definitions
- If unresolved blockers remain: capture-open-questions

Deliverables:
- Interface contract coverage for in-scope integrations.
- Dependency map with owner/status/sequencing for major dependencies.
- Integration workflow covering normal and blocked paths.

Checks:
- Each interface includes owner, input/output contract, and failure behavior.
- Critical dependencies include status, timeline, and sequencing constraints.
- Integration workflows map to interface/dependency artifacts and identify blockers.
