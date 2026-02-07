# Preset: Unstructured notes -> structured, enriched wiki slice

Author need: Turn a scoped set of unstructured notes into a structured wiki slice with added missing context, explicit interfaces, and decision-support scaffolding (plan/risks/open questions).
Start: unstructured notes or draft wiki slice; useful details exist but are scattered and incomplete.
Target: a hub page + drill-down pages organized for fast orientation and deeper implementation planning (architecture, artifacts/interfaces, plan, risks, open questions).

Personas:
- Think-as: `architect`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `security-auditor`, `sre-operator`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- create-outline
- add-context
- clarify-scope
- cross-link-pages
- capture-open-questions

Conditional actions (triggered):
- If decisions are implied but not explicit: document-decisions, document-tradeoffs
- If boundaries/interfaces are unclear: define-interfaces, define-workflows
- If quality attributes are missing: define-quality-attributes
- If risks are central or uncertainty is high: identify-risks, add-mitigations
- If terms are overloaded: strengthen-definitions, align-terminology
- If a doc is too large or mixes topics: split-into-subpages
- If key claims need sources: add-evidence-links
- If prose is vague or hard to scan: improve-writing, shape-flow

Deliverables:
- A hub page with navigation (and "locked vs open" if known).
- 2-7 drill-down pages or a clear section hierarchy grouped by topic.
- Open questions and assumptions captured (as sections or block overrides).

Checks:
- Structure: there is a clear entrypoint (hub) and a drill-down path by topic.
- Completeness: interfaces/workflows, decisions, risks/mitigations, and open questions are present or explicitly labeled.
- Decision traceability: "locked vs open" is explicit and rationales are captured.
- Precision: claims are concrete; ambiguity is converted into `Assumption` / `Question`.
