# Clarity Action Library

This file is authoritative for action-family structure, class semantics, and
the action expansion rule.

## Start Here

Use this file when you need to answer:

- how action files are structured
- what `deterministic`, `structural`, and `editorial` mean
- when the pass may add actions beyond the selected preset

Use these next documents:

- `../presets/overview.md`: preset selection and preset catalog
- one action leaf file: action-specific instructions
- `../../methodology/WORKFLOW.md`: runtime sequence and audit gates

## Path Context

Source repo:

- `library/actions/index.md`

Installed runtime:

- `.methodologies/clarity/library/actions/index.md`

## How To Use Actions

1. Select a preset from `../presets/overview.md`.
2. Open the preset's mapped action files.
3. Follow the action files during execution.
4. If the preset is not enough, use the action expansion rule below.

## Action Expansion Rule

The pass may add any action from the action library if:

- it supports the intended outcome
- it is justified by a specific observed trigger
- it is recorded in the plan as `Added action: X; Trigger: Y; Artifact: Z`

Do not return to intake only because a triggered action was added. Return to
intake only when a run parameter changes materially.

## Action File Structure

Every action file should keep this order:

- `Purpose`
- `Class`
- `Inputs`
- `Preconditions`
- `Actions`
- `Outputs`
- `Quality checks`
- `Return-to-intake triggers`
- `Plan/report logging`

## Class Semantics

- `deterministic`: use strict contracts with clear preconditions, objective
  outputs, pass or fail checks, and escalation triggers
- `structural`: enforce hierarchy, routing, and link hygiene without changing
  more meaning than necessary
- `editorial`: allow wording-only refinement; escalate when meaning or posture
  would change

Each class still uses the full action-file structure above.

## Actions

Each action entry below gives the purpose, when to use it, a guardrail, and
the leaf file to open.

### Structure (`structure/`)

- create-outline (`structural`): build or refine the page or wiki outline; use
  when headings are missing or flat; guardrail: keep placeholders labeled as
  `Question` or `Assumption`. `structure/create-outline.md`
- shape-flow (`structural`): normalize headings and narrative flow together;
  use when section order and heading shape both need cleanup.
  `structure/shape-flow.md`
- add-hierarchy (`structural`): introduce folder-level hierarchy (hub +
  subpages or subfolders) for a flat doc set; use when a folder is readable
  only one file at a time; guardrail: keep a canonical hub and preserve old
  entrypoints (update links; stubs optional). `structure/add-hierarchy.md`
- split-into-subpages (`structural`): split oversized pages into a hub plus
  drill-down pages; use when a single doc mixes multiple topics; guardrail:
  avoid duplication by keeping one canonical source per topic.
  `structure/split-into-subpages.md`
- normalize-headings (`structural`, alias): compatibility alias of
  `shape-flow`. `structure/normalize-headings.md`
- improve-flow (`structural`, alias): compatibility alias of `shape-flow`.
  `structure/improve-flow.md`

### Consistency (`consistency/`)

- canonicalize-topic (`deterministic`): resolve overlap or conflicts by
  selecting one canonical source per topic and aligning all scoped pages.
  `consistency/canonicalize-topic.md`
- align-terminology (`deterministic`): normalize domain terminology; use when
  terms are overloaded; guardrail: define terms before rewriting usage.
  `consistency/align-terminology.md`
- verify-propagation (`deterministic`): verify targeted updates are propagated
  across required surfaces; use when changes may be partially reflected across
  docs; guardrail: use a propagation matrix and canonical source precedence.
  `consistency/verify-propagation.md`
- align-cross-pages (`deterministic`, alias): compatibility alias of
  `canonicalize-topic`. `consistency/align-cross-pages.md`
- resolve-inconsistencies (`deterministic`, alias): compatibility alias of
  `canonicalize-topic`. `consistency/resolve-inconsistencies.md`

### Labels And Definitions (`labels/`)

- apply-labels (`deterministic`): apply Clarity labels to statements; use when
  intent is unclear; guardrail: use section defaults and block overrides and
  avoid inline labels. `labels/apply-labels.md`
- strengthen-definitions (`deterministic`): define key terms once and use them
  consistently; use when terms are fuzzy; guardrail: update all usages after
  definitions change. `labels/strengthen-definitions.md`

### Content Completeness (`content/`)

- add-context (`editorial`): add background and framing; use when readers
  cannot orient quickly; guardrail: keep framing concise and relevant.
  `content/add-context.md`
- fill-gaps (`deterministic`): add missing information or placeholders; use
  when key info is missing; guardrail: label unknowns as `Question` or
  `Assumption`. `content/fill-gaps.md`

### Decisions And Tradeoffs (`decisions/`)

- document-decisions (`deterministic`): make key decisions explicit; use when
  choices are implicit; guardrail: include rationale and scope.
  `decisions/document-decisions.md`
- document-tradeoffs (`deterministic`): capture tradeoffs and their rationale;
  use when constraints or priorities collide; guardrail: tie tradeoffs to
  goals. `decisions/document-tradeoffs.md`
- capture-alternatives (`deterministic`): document alternative paths; use when
  options were considered; guardrail: record why each was not chosen.
  `decisions/capture-alternatives.md`

### Research And Business (`research/`)

- define-problem-statement (`deterministic`): make the problem and affected
  audience explicit; use when the why is fuzzy; guardrail: avoid solution
  framing. `research/define-problem-statement.md`
- surface-assumptions-hypotheses (`deterministic`): convert assumptions into
  testable hypotheses and questions; use when uncertainty is implicit;
  guardrail: keep scope small and testable.
  `research/surface-assumptions-hypotheses.md`
- capture-user-needs (`deterministic`): capture personas, needs, and use
  cases; use when user context is thin; guardrail: keep needs separate from
  solutions. `research/capture-user-needs.md`
- capture-market-context (`deterministic`): capture market conditions and
  alternatives; use when positioning is unclear; guardrail: link to sources
  where possible. `research/capture-market-context.md`
- document-business-case (`deterministic`): record business objectives and
  value; use when business rationale is unclear; guardrail: include benefits,
  costs, and success criteria. `research/document-business-case.md`
- synthesize-research (`deterministic`): convert research into findings and
  insights; use when research is raw; guardrail: separate observations,
  findings, and insights. `research/synthesize-research.md`

### Requirements And Success (`requirements/`)

- derive-requirements (`deterministic`): convert goals into requirements; use
  when goals exist without requirements; guardrail: avoid solution bias.
  `requirements/derive-requirements.md`
- define-workflows (`deterministic`): make the end-to-end flow explicit; use
  when process actions are implied; guardrail: keep actions testable and
  scoped. `requirements/define-workflows.md`
- define-interfaces (`deterministic`): specify inputs, outputs, and contracts;
  use when boundaries are implicit; guardrail: include error behavior.
  `requirements/define-interfaces.md`
- define-handoff-contracts (`deterministic`): define cross-team handoff
  contracts with ownership, I/O, acceptance, and escalation; use when handoffs
  are implicit or fragile. `requirements/define-handoff-contracts.md`
- enumerate-edge-cases (`deterministic`): capture edge cases and expected
  behavior; use when failure modes are hidden; guardrail: avoid turning edge
  cases into core flows. `requirements/enumerate-edge-cases.md`
- define-acceptance-criteria (`deterministic`): make requirements testable; use
  when requirements exist; guardrail: make criteria testable.
  `requirements/define-acceptance-criteria.md`
- define-quality-attributes (`deterministic`): capture non-functional
  requirements; use when non-functional needs are implicit; guardrail: add
  measurable targets. `requirements/define-quality-attributes.md`
- define-success-criteria (`deterministic`): define measurable success
  conditions; use when success is vague; guardrail: tie metrics to goals or
  objectives. `requirements/define-success-criteria.md`

### Risk And Dependencies (`risk/`)

- identify-risks (`deterministic`): surface risks with triggers and impact; use
  when risks are implied; guardrail: include triggers and impact.
  `risk/identify-risks.md`
- add-mitigations (`deterministic`): pair risks with mitigations; use when
  risks are listed; guardrail: link each mitigation to a risk.
  `risk/add-mitigations.md`
- map-dependencies (`deterministic`): make dependencies explicit; use when
  external inputs matter; guardrail: add status and sequencing notes.
  `risk/map-dependencies.md`

### Traceability (`traceability/`)

- add-evidence-links (`deterministic`): link claims to sources; use when claims
  lack sources; guardrail: remove or reframe unsupported claims.
  `traceability/add-evidence-links.md`
- cross-link-pages (`structural`): connect related pages and reduce duplication;
  use when related pages are isolated; guardrail: keep one canonical source.
  `traceability/cross-link-pages.md`

### Operations And Support (`operations/`)

- triage-support-signals (`deterministic`): prioritize support signals and
  define triage-to-resolution flow; use when recurring support issues are
  high-variance or hard to resolve. `operations/triage-support-signals.md`

### Style (`style/`)

- improve-writing (`editorial`): reduce ambiguity and filler; use when prose is
  vague or bloated; guardrail: preserve meaning. `style/improve-writing.md`
- apply-positive-framing (`editorial`): rewrite negative definitions into
  affirmative descriptions; use when definitions are negative; guardrail: keep
  explicit non-goals. `style/apply-positive-framing.md`

### Scope And Follow-Up (`scope/`)

- clarify-scope (`deterministic`): clarify what is in and out of scope; use
  when boundaries are implicit; guardrail: separate Goal, Scope, and Non-Goal.
  `scope/clarify-scope.md`
- capture-open-questions (`deterministic`): capture missing information for
  follow-up; use when unknowns block clarity; guardrail: prioritize by impact.
  `scope/capture-open-questions.md`
