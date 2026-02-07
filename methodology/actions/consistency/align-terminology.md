# Action: align-terminology

Class: deterministic

Purpose: Ensure domain terms are used consistently across the scope.

Inputs:
- Scope (paths/headings/labels)
- `../../LABELS.md`

Preconditions:
- Scope and exclusions are explicit.
- Canonical glossary location is known (or created in scope).

Actions:
1) List key domain terms and their current usage.
2) Choose or create canonical Definitions in the glossary.
3) Update usages to match the canonical terms and definitions.
4) Record term migrations (old term -> canonical term) for traceability.

Outputs:
- Consistent terminology and updated definitions.
- Term migration map for changed terminology.

Quality checks:
- Each key in-scope term maps to exactly one canonical definition.
- Conflicting synonyms are either deprecated or explicitly disambiguated.
- Updated pages use canonical terminology consistently.

Return-to-intake triggers:
- A terminology conflict is tied to a locked decision with unclear authority.
- Normalization would require semantic changes outside approved scope.

Plan/report logging:
- Plan trace line: `align-terminology | trigger | terms normalized | pages touched | checks passed`.
- Report summary: terminology updates, deprecated terms, unresolved definition questions.
