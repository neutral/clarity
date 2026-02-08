# Preset: Terminology drift -> consistent language

Author need: Normalize language so terms mean one thing everywhere.
Start: terms are overloaded or inconsistent.
Target: stable glossary and consistent usage.

Personas:
- Think-as: `technical-editor`
- Write-for: `cto-feasibility`
- Audit: `principal-engineer`, `process-compliance`
- Polish: `technical-editor`

Core actions (minimum):
- strengthen-definitions
- align-terminology
- canonicalize-topic

Conditional actions (triggered):
- If the glossary does not exist: create a canonical glossary page (via strengthen-definitions).
- If terms appear across many pages: cross-link-pages (to canonical definitions) and remove duplicated definitions.
- If drift is caused by overlap: canonicalize-topic

Deliverables:
- Canonical glossary/definitions location.
- Updated term usage across the scoped docs.

Checks:
- A canonical glossary exists/updates are made where terms are defined.
- Term usage is consistent across the scope after definitions change.
- Conflicting definitions are resolved (no "same term, different meaning" drift).
