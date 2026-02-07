# Clarity Action Library

Each action is a repeatable improvement unit that can be applied to a scope.
Actions are tactics used by presets during a pass run. They are not strictly
linear; pick actions based on triggers and checks.

Why this layer exists: actions turn methodology intent into concrete edits while
keeping variance low across agents.

## How to use
- Agent selects a preset from `../presets/overview.md`.
- Open the mapped action files and follow the instructions.
- Use shared scripts from `scripts/` when present (optional).
- Actions are grouped by category in subfolders for quick discovery.
- Presets define the intent; actions carry out the work.
- If no preset fits, propose a custom preset (name + personas + core/conditional actions + deliverables + checks) for approval; if accepted, add it to `../presets/overview.md`.

## Action format
- Purpose: Why this action exists.
- Class: `deterministic` | `structural` | `editorial` (one per action).
- Inputs: Scope and references needed.
- Actions: Minimal sequence to apply.
- Outputs: What changes or artifacts to produce.

## Class strategy

- `deterministic`: use strict contracts (clear preconditions, objective output schema, pass/fail checks, and escalation triggers).
- `structural`: enforce hierarchy/link hygiene (before/after mapping, canonical source routing, no orphan/broken paths).
- `editorial`: allow wording-only refinement; avoid semantic or decision changes unless explicitly escalated.

Deterministic minimum contract (required in each deterministic action file):
- `Preconditions`
- `Quality checks`
- `Return-to-intake triggers`
- `Plan/report logging`

Structural minimum contract (required in each structural action file):
- `Preconditions`
- `Quality checks`
- `Return-to-intake triggers`
- `Plan/report logging`

Editorial minimum contract (required in each editorial action file):
- `Preconditions`
- `Quality checks`
- `Return-to-intake triggers`
- `Plan/report logging`

Class intent: pick one strategy per action so reviewers can predict how strict
execution should be before reading implementation details.

## Actions

### Structure (`structure/`)
- create-outline (`structural`): Build or refine the page/wiki outline; use when headings are missing or flat; guardrail: keep placeholders labeled as Question or Assumption. `structure/create-outline.md`
- shape-flow (`structural`): Normalize headings and narrative flow together; use when section order and heading shape both need cleanup. `structure/shape-flow.md`
- add-hierarchy (`structural`): Introduce folder-level hierarchy (hub + subpages/subfolders) for a flat doc set; use when a folder is readable only “one file at a time”; guardrail: keep a canonical hub and preserve old entrypoints (update links; stubs optional). `structure/add-hierarchy.md`
- split-into-subpages (`structural`): Split oversized pages into a hub + drill-down pages; use when a single doc mixes multiple topics; guardrail: avoid duplication by keeping one canonical source per topic. `structure/split-into-subpages.md`
- normalize-headings (`structural`, alias): Compatibility alias of `shape-flow`. `structure/normalize-headings.md`
- improve-flow (`structural`, alias): Compatibility alias of `shape-flow`. `structure/improve-flow.md`

### Consistency (`consistency/`)
- canonicalize-topic (`deterministic`): Resolve overlap/conflicts by selecting one canonical source per topic and aligning all scoped pages. `consistency/canonicalize-topic.md`
- align-terminology (`deterministic`): Normalize domain terminology; use when terms are overloaded; guardrail: define terms before rewriting usage. `consistency/align-terminology.md`
- verify-propagation (`deterministic`): Verify targeted updates are propagated across required surfaces; use when changes may be partially reflected across docs; guardrail: use a propagation matrix and canonical source precedence. `consistency/verify-propagation.md`
- align-cross-pages (`deterministic`, alias): Compatibility alias of `canonicalize-topic`. `consistency/align-cross-pages.md`
- resolve-inconsistencies (`deterministic`, alias): Compatibility alias of `canonicalize-topic`. `consistency/resolve-inconsistencies.md`

### Labels and definitions (`labels/`)
- apply-labels (`deterministic`): Apply clarity labels to statements; use when intent is unclear; guardrail: use section defaults/block overrides and avoid inline labels. `labels/apply-labels.md`
- strengthen-definitions (`deterministic`): Define key terms once and use them consistently; use when terms are fuzzy; guardrail: update all usages after definitions change. `labels/strengthen-definitions.md`

### Content completeness (`content/`)
- add-context (`editorial`): Add background and framing; use when readers cannot orient quickly; guardrail: keep framing concise and relevant. `content/add-context.md`
- fill-gaps (`deterministic`): Add missing information or placeholders; use when key info is missing; guardrail: label unknowns as Question or Assumption. `content/fill-gaps.md`

### Decisions and tradeoffs (`decisions/`)
- document-decisions (`deterministic`): Make key decisions explicit; use when choices are implicit; guardrail: include rationale and scope. `decisions/document-decisions.md`
- document-tradeoffs (`deterministic`): Capture tradeoffs and their rationale; use when constraints or priorities collide; guardrail: tie tradeoffs to goals. `decisions/document-tradeoffs.md`
- capture-alternatives (`deterministic`): Document alternative paths; use when options were considered; guardrail: record why each was not chosen. `decisions/capture-alternatives.md`

### Research and business (`research/`)
- define-problem-statement (`deterministic`): Make the problem and affected audience explicit; use when the why is fuzzy; guardrail: avoid solution framing. `research/define-problem-statement.md`
- surface-assumptions-hypotheses (`deterministic`): Convert assumptions into testable hypotheses and questions; use when uncertainty is implicit; guardrail: keep scope small and testable. `research/surface-assumptions-hypotheses.md`
- capture-user-needs (`deterministic`): Capture personas, needs, and use cases; use when user context is thin; guardrail: keep needs separate from solutions. `research/capture-user-needs.md`
- capture-market-context (`deterministic`): Capture market conditions and alternatives; use when positioning is unclear; guardrail: link to sources where possible. `research/capture-market-context.md`
- document-business-case (`deterministic`): Record business objectives and value; use when business rationale is unclear; guardrail: include benefits, costs, and success criteria. `research/document-business-case.md`
- synthesize-research (`deterministic`): Convert research into findings and insights; use when research is raw; guardrail: separate observations, findings, and insights. `research/synthesize-research.md`

### Requirements and success (`requirements/`)
- derive-requirements (`deterministic`): Convert goals into requirements; use when goals exist without requirements; guardrail: avoid solution bias. `requirements/derive-requirements.md`
- define-workflows (`deterministic`): Make the end-to-end flow explicit; use when process actions are implied; guardrail: keep actions testable and scoped. `requirements/define-workflows.md`
- define-interfaces (`deterministic`): Specify inputs, outputs, and contracts; use when boundaries are implicit; guardrail: include error behavior. `requirements/define-interfaces.md`
- define-handoff-contracts (`deterministic`): Define cross-team handoff contracts with ownership, I/O, acceptance, and escalation; use when handoffs are implicit or fragile. `requirements/define-handoff-contracts.md`
- enumerate-edge-cases (`deterministic`): Capture edge cases and expected behavior; use when failure modes are hidden; guardrail: avoid turning edge cases into core flows. `requirements/enumerate-edge-cases.md`
- define-acceptance-criteria (`deterministic`): Make requirements testable; use when requirements exist; guardrail: make criteria testable. `requirements/define-acceptance-criteria.md`
- define-quality-attributes (`deterministic`): Capture non-functional requirements; use when non-functional needs are implicit; guardrail: add measurable targets. `requirements/define-quality-attributes.md`
- define-success-criteria (`deterministic`): Define measurable success conditions; use when success is vague; guardrail: tie metrics to goals or objectives. `requirements/define-success-criteria.md`

### Risk and dependencies (`risk/`)
- identify-risks (`deterministic`): Surface risks with triggers and impact; use when risks are implied; guardrail: include triggers and impact. `risk/identify-risks.md`
- add-mitigations (`deterministic`): Pair risks with mitigations; use when risks are listed; guardrail: link each mitigation to a risk. `risk/add-mitigations.md`
- map-dependencies (`deterministic`): Make dependencies explicit; use when external inputs matter; guardrail: add status and sequencing notes. `risk/map-dependencies.md`

### Traceability (`traceability/`)
- add-evidence-links (`deterministic`): Link claims to sources; use when claims lack sources; guardrail: remove or reframe unsupported claims. `traceability/add-evidence-links.md`
- cross-link-pages (`structural`): Connect related pages and reduce duplication; use when related pages are isolated; guardrail: keep one canonical source. `traceability/cross-link-pages.md`

### Operations and support (`operations/`)
- triage-support-signals (`deterministic`): Prioritize support signals and define triage-to-resolution flow; use when recurring support issues are high-variance or hard to resolve. `operations/triage-support-signals.md`

### Style (`style/`)
- improve-writing (`editorial`): Reduce ambiguity and filler; use when prose is vague or bloated; guardrail: preserve meaning. `style/improve-writing.md`
- apply-positive-framing (`editorial`): Rewrite negative definitions into affirmative descriptions; use when definitions are negative; guardrail: keep explicit Non-Goals. `style/apply-positive-framing.md`

### Scope and follow-up (`scope/`)
- clarify-scope (`deterministic`): Clarify what is in and out of scope; use when boundaries are implicit; guardrail: separate Goal, Scope, and Non-Goal. `scope/clarify-scope.md`
- capture-open-questions (`deterministic`): Capture missing information for follow-up; use when unknowns block clarity; guardrail: prioritize by impact. `scope/capture-open-questions.md`
