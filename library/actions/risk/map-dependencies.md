# Action: map-dependencies

Class: deterministic

Purpose: Make external dependencies explicit and current.

Inputs:
- Scope (paths/headings/labels)
- External systems, teams, or vendors

Preconditions:
- Scope and dependency-relevant pages are identified.
- Canonical source register is available when dependency authority conflicts exist.

Actions:
1) Build dependency inventory:
   - dependency ID/name
   - provider/owner
   - what it provides
2) Add execution posture:
   - status
   - expected timeline/date (or explicitly unknown)
   - sequencing constraint (what it blocks/unblocks)
3) Classify dependency criticality:
   - critical path / important / supporting
   - confidence (confirmed / assumed)
4) Assess risk:
   - failure/degradation mode
   - impact on scope or milestone
   - mitigation/follow-up pointer (if known)

Outputs:
- Dependency register entries with:
  - Dependency ID
  - Owner/provider
  - Status
  - Timeline/ETA
  - Sequencing constraint
  - Criticality
  - Failure mode
  - Impact
  - Mitigation/follow-up link
- Dependency statements with status and impact.

Quality checks:
- Every critical-path dependency has owner, status, timeline, and sequencing constraint.
- Every dependency has explicit impact (or explicit `unknown` with follow-up owner).
- Dependency risks are linked to risk/mitigation items where relevant.
- Blocked critical dependencies are visible in scoped milestone/workflow sections.

Return-to-intake triggers:
- Dependency owner or authority is unclear for a critical path item.
- A blocked critical dependency would change milestones or done-definition.
- Newly discovered dependencies materially expand scope beyond plan intent.

Plan/report logging:
- Plan trace line: `map-dependencies | trigger | dependencies mapped | critical blockers | checks passed`.
- Report summary: dependency posture by criticality and blocked items.
