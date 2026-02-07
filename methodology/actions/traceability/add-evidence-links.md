# Action: add-evidence-links

Class: deterministic

Purpose: Link claims and decisions to sources or evidence.

Inputs:
- Scope (paths/headings/labels)
- Research notes, data, or design sources

Preconditions:
- Claims/decisions needing support are identifiable in scope.
- Source authority baseline (canonical sources or owner direction) is available.

Actions:
1) Identify claims that need evidence.
2) Add references or links to the supporting source.
3) Remove or reframe unsupported claims.
4) Mark unresolved support needs as `Question` or `Assumption`.

Outputs:
- Evidence links tied to claims and decisions.

Quality checks:
- Material claims/decisions in scope are evidence-linked or explicitly reframed.
- Evidence links resolve to authoritative or clearly cited sources.
- Unsupported claims are not left as unqualified facts.

Return-to-intake triggers:
- Source authority conflicts for decision-impacting claims.
- Critical claims cannot be supported and affect intended outcome or approval posture.

Plan/report logging:
- Plan trace line: `add-evidence-links | trigger | claims linked | unsupported count | checks passed`.
- Report summary: evidence coverage, unsupported claim disposition, and source conflicts.
