# Action: strengthen-definitions

Class: deterministic

Purpose: Ensure key terms are defined once and used consistently.

Inputs:
- Scope (paths/headings/labels)
- Glossary section (or create one)

Preconditions:
- Scope and exclusions are explicit.
- Glossary ownership/location is known for in-scope topics.

Actions:
1) List terms that carry project meaning.
2) Add or tighten Definitions in the glossary section.
3) Update usages to match Definitions.
4) Flag terms that cannot yet be stabilized as `Question`.

Outputs:
- A stable glossary and consistent usage.

Quality checks:
- Each key term has one canonical definition in scope.
- Usage in scoped pages matches canonical definitions.
- Ambiguous or unresolved terms are explicitly labeled `Question`.

Return-to-intake triggers:
- Definition authority conflicts across locked sources.
- Stabilizing definitions would require semantic changes outside scope.

Plan/report logging:
- Plan trace line: `strengthen-definitions | trigger | definitions updated | usages aligned | checks passed`.
- Report summary: terms stabilized, terms deferred, and definition-related follow-ups.
