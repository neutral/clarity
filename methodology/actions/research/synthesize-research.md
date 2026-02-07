# Action: synthesize-research

Class: deterministic

Purpose: Convert research notes into findings, insights, and evidence.

Inputs:
- Scope (paths/headings/labels)
- Research notes, data, or interviews

Preconditions:
- Research inputs are in-scope and attributable to sources.
- Research questions or synthesis objective are explicit.

Actions:
1) List research questions and methods used.
2) Summarize observations into findings.
3) Convert findings into insights with supporting evidence links.
4) Separate unsupported inferences as `Assumption` or `Question`.

Outputs:
- Findings, Insights, and Evidence statements.

Quality checks:
- Observations, findings, and insights are clearly separated.
- Each insight links to supporting evidence or explicit uncertainty labeling.
- Synthesis covers the stated research questions or flags coverage gaps.

Return-to-intake triggers:
- Source quality is insufficient for decision-impacting conclusions.
- Synthesis reveals scope mismatch with the intended outcome.

Plan/report logging:
- Plan trace line: `synthesize-research | trigger | findings synthesized | evidence coverage | checks passed`.
- Report summary: synthesis outputs, evidence quality, and unresolved gaps.
