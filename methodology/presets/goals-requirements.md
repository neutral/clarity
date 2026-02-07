# Preset: Goals -> requirements

Author need: Turn goals into clear requirements.
Start: goals and needs exist, requirements are missing.
Target: requirements with acceptance criteria and quality attributes.

Personas:
- Think-as: `principal-engineer`
- Write-for: `cto-feasibility`
- Audit: `senior-pm`, `sre-operator`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- derive-requirements
- define-acceptance-criteria
- define-quality-attributes

Conditional actions (triggered):
- If workflows are implicit: define-workflows
- If interfaces are implicit: define-interfaces
- If success metrics are missing: define-success-criteria
- If dependencies exist: map-dependencies
- If edge cases are important: enumerate-edge-cases

Deliverables:
- Requirements list that is testable.
- Acceptance criteria per requirement (or per requirement group).
- Quality attributes with measurable targets/budgets (or explicitly unknown).

Checks:
- Requirements are testable and include acceptance criteria.
- Quality attributes are measurable (targets, budgets, or explicit thresholds).
- Dependencies and sequencing constraints are explicit.
