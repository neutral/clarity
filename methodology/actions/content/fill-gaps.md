# Action: fill-gaps

Class: deterministic

Purpose: Add missing information required for clarity or decision-making.

Inputs:
- Scope (paths/headings/labels)
- Open questions or known gaps
- Canonical sources / decision ledger when factual or decision gaps are in scope

Preconditions:
- Scope and exclusions are explicit.
- Canonical sources are known for any fact expected to be added.

Actions:
1) Classify each gap:
   - missing fact
   - missing decision/tradeoff
   - missing interface/workflow detail
   - missing risk/dependency detail
2) Prioritize each gap:
   - impact (high/medium/low)
   - urgency (now/next/later)
   - priority using `impact x urgency`
3) Record impact:
   - what task/decision is blocked
   - owner and target date if known
4) Fill or defer:
   - if evidence exists, add content and link source/decision
   - if evidence is missing, add `Question` / `Assumption`
5) Record outcomes in plan/report:
   - filled gaps
   - deferred gaps and follow-ups

Outputs:
- Gap register entries with:
  - Gap ID
  - Gap class
  - Impact
  - Urgency
  - Priority
  - Resolution (`filled` or `deferred`)
  - Owner/follow-up (if deferred)
- Completed sections or explicit placeholders for missing info.

Quality checks:
- Every identified gap is classified and has either content or labeled deferral.
- No new factual claim is added without source/decision linkage.
- Deferred gaps are captured in open questions with impact and owner/follow-up notes.
- High-priority gaps are not left unresolved without explicit rationale.

Return-to-intake triggers:
- A high-impact gap cannot be sourced from canonical references.
- Filling the gap would introduce a new decision outside approved scope.
- Gap volume or type implies the pass scope/outcome is no longer accurate.

Plan/report logging:
- Plan trace line: `fill-gaps | trigger | gaps processed | deferred count | checks passed`.
- Report summary: gaps filled vs deferred, and follow-up queue.
