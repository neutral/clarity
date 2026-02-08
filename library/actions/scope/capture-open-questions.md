# Action: capture-open-questions

Class: deterministic

Purpose: Capture missing information for follow-up.

Inputs:
- Scope (paths/headings/labels)
- Owner feedback

Preconditions:
- Unknowns and blockers are collected from scoped content.
- Question owner/escalation path is known or explicitly pending.

Actions:
1) Mark unclear claims as Questions.
2) Group questions by topic.
3) Prioritize by impact or dependency.
4) Add to the plan and include in the report.
5) Add owner and next action/date when possible.

Outputs:
- A prioritized question list.

Quality checks:
- Each question has topic, impact level, and current status.
- High-impact questions include owner and next action/date or explicit owner gap.
- Questions that block done-definition are clearly marked.

Return-to-intake triggers:
- Open high-impact questions block completion of the intended outcome.
- Question volume indicates current scope is underspecified.

Plan/report logging:
- Plan trace line: `capture-open-questions | trigger | questions captured | blocker count | checks passed`.
- Report summary: question backlog by impact and blocking status.
