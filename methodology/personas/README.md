# Personas

Personas are control points used per pass to shape:

- Think-as: how the agent reasons about the scope.
- Write-for: who the output is optimized for.

Personas are selected once per pass (not per action) and recorded in
`.clarity/workflow/plan.md` and `.clarity/workflow/report.md`.

Why this helps: persona controls make expected quality explicit up front, so
authors spend less time correcting style-only variance and more time resolving
real content/decision gaps.

Default selection: use the personas defined on the selected preset in
`../presets/overview.md` (override only when explicitly needed).

Do not treat personas as style tags. A persona is useful only if it changes:

- what failure modes are actively prevented,
- what questions must be answered before claiming completion,
- what checks are run at audit time, and
- what decisions/actions the output enables for its audience.

Persona file format is intentionally small so it can be applied reliably. Avoid
embedding preset-specific output templates here (presets/actions decide the
shape of the docs); personas define the control mode and quality bar.

Required sections:

- `Mission`
- `When To Use` (include a short "Avoid when" if helpful)
- `Control Mode (Think-As / Write-For)`
- `Priorities` (ordered list)
- `Must-Answer`
- `Failure Modes (Avoid)`

Recommended control contract (record in plan/report):

- Control objective: what risk this persona controls.
- Failure modes prevented: top 2-5 mistakes this persona should block.
- Must-answer set: questions this persona forces the pass to answer or explicitly defer.
- Persona checks: objective checks tied to this persona's control objective.

## Selection model (control-first)

1. Choose think-as by the highest-cost failure modes in scope.
2. Choose write-for by decision owner and required action (not tone preference).
3. Choose audit personas to be adversarial to the likely failure modes.
4. In multi-agent/compliance-heavy runs, include `process-compliance`.
5. Keep the persona set minimal; each added persona must add a distinct control.

## Current persona control map

| Persona | Primary control focus | Typical failures prevented |
| --- | --- | --- |
| `cto-feasibility` | Feasibility and sequencing realism | Hand-wavy plans, hidden dependencies, unclear done state |
| `architect` | Boundaries, contracts, invariants | Implicit interfaces, mixed responsibilities, missing invariants |
| `principal-engineer` | Implementability and operability | Big-bang plans, unclear integration seams, weak acceptance gates |
| `senior-pm` | Scope and milestone clarity | Wishlist scope, fuzzy MVP boundaries, weak launch criteria |
| `cpo` | Strategic fit and portfolio tradeoffs | Value claims without tradeoffs, weak option framing |
| `ceo` | Investment narrative and risk gates | Narrative without accountability, unclear go/no-go gates |
| `security-auditor` | Threat model and mitigations | Security claims without controls, undefined trust boundaries |
| `sre-operator` | Reliability and day-2 operations | No rollback/observability, undefined on-call posture |
| `process-compliance` | Workflow/policy adherence | Missing receipts, uncontrolled drift, non-auditable runs |
| `propagation-auditor` | Cross-surface propagation coverage | Partial rollout, stale guidance, unresolved cross-doc conflicts |
| `developer-power-user` | Integration precision and tooling | Missing prerequisites, vague contracts, weak troubleshooting |
| `end-user` | User workflow predictability | Jargon-heavy docs, no failure/recovery path |
| `technical-editor` | Precision and consistency hygiene | Ambiguous prose, terminology drift, link/navigation decay |

Available personas (current):

- `cto-feasibility`
- `architect`
- `principal-engineer`
- `senior-pm`
- `cpo`
- `ceo`
- `security-auditor`
- `sre-operator`
- `process-compliance`
- `propagation-auditor`
- `developer-power-user`
- `end-user`
- `technical-editor`
