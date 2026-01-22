# Clarity Enhancement Loop

Use this loop to improve documents in progressive, repeatable passes.

## Loop stages

0. Intake: complete `INTAKE.md`.
1. Baseline scan: list candidate docs and current clarity state (WIP, draft, stable).
2. Target definition: specify files, sections, subsections, or label filters.
3. Scope selection: pick a small, focused target set.
4. If no flow/step/template fits, add it before proceeding.
5. Flow selection: choose a flow from `FLOW.md` that matches the desired clarity outcome.
6. Apply steps: use the flow’s mapped steps to make edits and add missing labels or definitions.
7. Validate: re-read for consistency and remove new ambiguity.
8. Report: provide the run details in the conversation using the template.

## Decision hints

- If structure is unclear, choose `WIP notes -> structured project set`.
- If docs conflict or overlap, choose `Overlapping docs -> canonical source`.
- If terms drift, choose `Terminology drift -> consistent language`.
- If business or user context is thin, choose `Research notes -> project context`.
- If alternatives or tradeoffs are implicit, choose `Design exploration -> decision-ready`.
- If requirements are missing, choose `Goals -> requirements`.
- If traceability is weak, choose `Low traceability -> evidence-backed docs`.
- If scope is unclear, choose `Ambiguous scope -> bounded project set`.
- If risks dominate, choose `Risk-heavy project set -> mitigated project set`.
- If detail depth is loose or has loopholes, choose `Project set draft -> detailed clarity`.

## Exit criteria

- Changes are limited to scope.
- Open questions are captured.
- The run report explains what changed and why.

## Quality Checks

Run quality checks on all new changes introduced and consider the effects on the full project docs set, not just the target set.

- Structure: sections, ordering, and scannability.
- Precision: unambiguous wording and testable statements.
- Consistency: terms and claims align across docs.
- Narrative flow: logical progression and minimal context switching.
- Completeness: required context is present for the intended task.
- Traceability: key claims link to sources or decisions.

## Best-practice anchors

- Audience-first: state who the doc is for and what it enables.
- Single source of truth: avoid duplicating facts across files.
- Explicit scope: clear goals, non-goals, and boundaries.
- Decision traceability: decisions include rationale and tradeoffs.
- Evidence-backed claims: link key claims to sources.
- Consistent terminology: definitions are stable and reused.
- Measurable outcomes: success criteria and acceptance criteria exist.
- Detail seams: interfaces, workflows, and edge cases are explicit where they matter.
- Visible uncertainty: assumptions and questions are labeled.
