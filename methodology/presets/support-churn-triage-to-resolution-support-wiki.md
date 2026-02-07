# Preset: Support churn -> triage-to-resolution support wiki

Aliases: `Support noise -> triage-to-resolution docs`

Author need: Reduce support churn by making triage/resolution paths explicit and repeatable.
Start: recurring support signals exist with inconsistent handling.
Target: prioritized support signal handling with clear triage, escalation, and closure flow.

Personas:
- Think-as: `sre-operator`
- Write-for: `developer-power-user`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- triage-support-signals
- define-workflows
- capture-open-questions

Conditional actions (triggered):
- If interface ownership is a root cause: define-interfaces, define-handoff-contracts
- If recurring issues indicate unmanaged risk: identify-risks, add-mitigations
- If closure quality is inconsistent: define-acceptance-criteria
- If support terminology is inconsistent: strengthen-definitions, align-terminology
- If navigation between troubleshooting docs is poor: cross-link-pages, shape-flow

Deliverables:
- Prioritized support signal register with owners and escalation triggers.
- Triage-to-resolution workflow with closure criteria.
- Explicit unresolved support blockers and follow-ups.

Checks:
- High-priority recurring signals have owner, triage path, and closure criteria.
- Escalation triggers and ownership are explicit for critical paths.
- Workflow and contract references are cross-linked to reduce support ambiguity.
