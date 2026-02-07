# Action: surface-assumptions-hypotheses

Class: deterministic

Purpose: Convert implicit assumptions into testable hypotheses and questions.

Inputs:
- Scope (paths/headings/labels)
- Project wiki assumptions, risks, or open questions

Preconditions:
- Assumption sources are identifiable in scoped content.
- Validation owner/method can be assigned or explicitly pending.

Actions:
1) List assumptions the project depends on.
2) Convert critical assumptions into Hypothesis statements.
3) Add Research Question statements for validation.
4) Note candidate Methods or evidence sources.
5) Rank by impact and test urgency.

Outputs:
- Assumption, Hypothesis, Research Question, and Method statements.

Quality checks:
- Critical assumptions are converted into testable hypotheses.
- Each hypothesis has a linked question/method or explicit gap.
- Prioritization is explicit for high-impact assumptions.

Return-to-intake triggers:
- High-impact assumptions cannot be tested with available methods/sources.
- Validation scope materially exceeds current run parameters.

Plan/report logging:
- Plan trace line: `surface-assumptions-hypotheses | trigger | assumptions converted | high-impact count | checks passed`.
- Report summary: assumption-to-hypothesis coverage and validation gaps.
