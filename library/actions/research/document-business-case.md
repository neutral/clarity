# Action: document-business-case

Class: deterministic

Purpose: Make the business rationale explicit for planning and prioritization.

Inputs:
- Scope (paths/headings/labels)
- Strategy, roadmap, or stakeholder inputs

Preconditions:
- Business objective context exists for the scoped topic.
- Source assumptions for benefits/costs are available or explicitly unknown.

Actions:
1) State the business objective and value proposition.
2) Capture expected benefits, costs, and tradeoffs.
3) Define success criteria or metrics if known.
4) Mark uncertain economic assumptions as `Assumption`.

Outputs:
- Business Case statements with objectives and outcomes.

Quality checks:
- Business objective, value proposition, benefits, and costs are explicit.
- Tradeoffs are documented for major investment choices.
- Success metrics are present or explicitly deferred with owner/follow-up.

Return-to-intake triggers:
- Business-case assumptions conflict with locked decisions or canonical strategy.
- Required business metrics/ownership are missing for high-impact decisions.

Plan/report logging:
- Plan trace line: `document-business-case | trigger | business case fields completed | metric gaps | checks passed`.
- Report summary: business rationale posture and unresolved assumptions.
