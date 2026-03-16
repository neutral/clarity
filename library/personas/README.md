# Personas

This file is authoritative for persona selection and the persona-family starter
rules.

## Start Here

Use this file when you need to answer:

- how Clarity chooses think-as and write-for personas
- what each persona file must contain
- which persona IDs are currently available

Use these next documents:

- one persona leaf file for mission, priorities, and must-answer questions
- `../presets/overview.md` for preset-defined persona bundles
- `../../methodology/WORKFLOW.md` for how personas are recorded in plan and
  report artifacts

## Path Context

Source repo:

- `library/personas/README.md`

Installed runtime:

- `.methodologies/clarity/library/personas/README.md`

## Persona Model

Personas are control points used per pass to shape:

- Think-as: how the agent reasons about the scope
- Write-for: who the output is optimized for

Personas are selected once per pass, not per action. Default selection comes
from the selected preset in `../presets/overview.md`.

Do not treat personas as style tags. A persona is useful only if it changes:

- what failure modes are actively prevented
- what questions must be answered before claiming completion
- what checks are run at audit time
- what decisions or actions the output enables for its audience

## Persona File Structure

Each persona file should keep this order:

- `Mission`
- `When To Use`
- `Control Mode (Think-As / Write-For)`
- `Priorities`
- `Must-Answer`
- `Failure Modes (Avoid)`

Recommended control contract to record in plan and report:

- control objective
- failure modes prevented
- must-answer set
- persona checks

## Selection Model

1. Choose think-as by the highest-cost failure modes in scope.
2. Choose write-for by decision owner and required action, not tone
   preference.
3. Choose audit personas to be adversarial to the likely failure modes.
4. In multi-agent or compliance-heavy runs, include `process-compliance`.
5. Keep the persona set minimal; each added persona must add a distinct
   control.

## Current Persona Control Map

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
| `process-compliance` | Workflow and policy adherence | Missing receipts, uncontrolled drift, non-auditable runs |
| `propagation-auditor` | Cross-surface propagation coverage | Partial rollout, stale guidance, unresolved cross-doc conflicts |
| `developer-power-user` | Integration precision and tooling | Missing prerequisites, vague contracts, weak troubleshooting |
| `end-user` | User workflow predictability | Jargon-heavy docs, no failure/recovery path |
| `technical-editor` | Precision and consistency hygiene | Ambiguous prose, terminology drift, link/navigation decay |

## Available Personas

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
