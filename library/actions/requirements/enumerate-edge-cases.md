# Action: enumerate-edge-cases

Class: deterministic

Purpose: Capture edge cases and expected behavior to close loopholes.

Inputs:
- Scope (paths/headings/labels)
- Workflows, requirements, or known failure modes

Preconditions:
- Baseline workflows/requirements exist for in-scope areas.
- Edge-case prioritization basis (impact or frequency) is available.

Actions:
1) List edge cases and their triggers for each workflow or requirement.
2) Specify the expected system behavior for each edge case.
3) Add constraints or acceptance criteria when behavior must be verified.
4) Mark out-of-scope edge cases explicitly.
5) Rank edge cases by impact/criticality.

Outputs:
- Edge Case statements with expected behavior.

Quality checks:
- Each in-scope edge case includes trigger and expected behavior.
- High-criticality edge cases map to acceptance criteria or explicit mitigations.
- Out-of-scope edge cases are explicitly marked and justified.

Return-to-intake triggers:
- Edge-case volume indicates the current scope/outcome is underspecified.
- Resolving critical edge cases requires new decisions outside approved scope.

Plan/report logging:
- Plan trace line: `enumerate-edge-cases | trigger | edge cases captured | critical count | checks passed`.
- Report summary: edge-case coverage, critical gaps, and deferred items.
