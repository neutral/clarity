# Preset: Compliance pressure -> policy-controlled evidence-backed wiki

Aliases: `Policy pressure -> governed evidence-backed docs`

Author need: Ensure policy-sensitive documentation is evidence-backed and governance-compliant.
Start: policy-relevant claims exist but controls and evidence are uneven.
Target: policy-controlled docs with explicit evidence, approvals, and unresolved exceptions.

Personas:
- Think-as: `process-compliance`
- Write-for: `cto-feasibility`
- Audit: `security-auditor`, `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- add-evidence-links
- document-decisions
- verify-propagation

Conditional actions (triggered):
- If policy terms are overloaded: apply-labels, strengthen-definitions
- If sources conflict by authority: canonicalize-topic
- If unresolved policy blockers remain: capture-open-questions
- If risk posture is implicit: identify-risks, add-mitigations

Deliverables:
- Evidence-linked policy-relevant claims/decisions.
- Propagation matrix for policy updates across required surfaces.
- Explicit unresolved policy conflicts with owner follow-ups.

Checks:
- Policy-relevant claims are evidence-linked or explicitly labeled uncertainty.
- `semantic` / `decision-impacting` changes include approval records.
- No unresolved policy conflict remains unless explicitly labeled `Question`.
- Canonical source and locked/open decision posture are consistent after updates.
