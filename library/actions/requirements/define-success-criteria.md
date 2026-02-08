# Action: define-success-criteria

Class: deterministic

Purpose: Define how success will be measured for the scope.

Inputs:
- Scope (paths/headings/labels)
- Goals and business objectives

Preconditions:
- Goals/objectives for the scope are explicit.
- Measurement owner/source is known or marked pending.

Actions:
1) Add Success Criteria tied to each Goal or Business Objective.
2) Specify metrics, baselines, or thresholds where possible.
3) Note measurement owner or source if known.
4) Mark unknown baselines/thresholds as `Question`.

Outputs:
- Success Criterion statements linked to goals.

Quality checks:
- Each in-scope goal/objective has a linked success criterion or explicit deferral.
- Criteria include measurable signal (metric, threshold, baseline, or target date).
- Unknown measurement fields are explicitly labeled `Question`.

Return-to-intake triggers:
- Goals/objectives conflict or are unstable in a way that blocks measurement.
- Success criteria would redefine the intended outcome or done-definition.

Plan/report logging:
- Plan trace line: `define-success-criteria | trigger | goals covered | unresolved metrics | checks passed`.
- Report summary: success criteria coverage and measurement gaps.
