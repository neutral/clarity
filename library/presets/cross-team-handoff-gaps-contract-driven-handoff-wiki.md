# Preset: Cross-team handoff gaps -> contract-driven handoff wiki

Aliases: `Handoff ambiguity -> contract-driven handoff docs`

Author need: Remove ambiguity at team boundaries by defining explicit handoff contracts.
Start: cross-team transitions are implicit, inconsistent, or failure-prone.
Target: contract-driven handoffs with ownership, acceptance gates, and escalation.

Personas:
- Think-as: `architect`
- Write-for: `senior-pm`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- define-handoff-contracts
- define-interfaces
- define-workflows
- clarify-scope

Conditional actions (triggered):
- If sequencing constraints are unclear: map-dependencies
- If handoff quality gates are missing: define-acceptance-criteria
- If team tradeoffs/ownership decisions are implicit: document-decisions, document-tradeoffs
- If unresolved ownership/policy conflicts remain: capture-open-questions
- If terminology differs by team: strengthen-definitions, align-terminology

Deliverables:
- Handoff contract register with trigger, owner, inputs/outputs, acceptance, and escalation.
- Cross-team workflow map linked to interface and dependency anchors.
- Explicit unresolved ownership/policy conflicts with follow-up owners.

Checks:
- Every critical cross-team handoff has contract fields completed or explicitly deferred.
- Handoff acceptance and escalation posture are clear for high-impact transitions.
- Cross-team workflow, interface, and dependency artifacts are internally consistent.
