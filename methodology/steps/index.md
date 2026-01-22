# Clarity Step Library

Each step is a repeatable pass that can be applied to a target set. Steps
are the execution actions mapped from flows.

## How to use
- Pick a flow from `../FLOW.md`.
- Open the mapped step files and follow their steps.
- Use shared scripts from `scripts/` when available.
- Steps are grouped by category in subfolders for quick discovery.
- Flows define the intent; steps carry out the work.
- If no flow fits, add one to `../FLOW.md` and map it to steps here.

## Step format
- Purpose: Why this pass exists.
- Inputs: Target set and references needed.
- Steps: Minimal sequence to apply.
- Outputs: What changes or artifacts to produce.

## Steps

### Structure (`structure/`)
- create-outline: Build or refine the document outline; use when headings are missing or flat; guardrail: keep placeholders labeled as Question or Assumption. `structure/create-outline.md`
- normalize-headings: Standardize heading hierarchy and naming; use when heading levels or names drift; guardrail: preserve semantic meaning while normalizing. `structure/normalize-headings.md`
- improve-flow: Make docs read in a logical order; use when sections read out of order; guardrail: keep context near the claims it supports. `structure/improve-flow.md`

### Consistency (`consistency/`)
- resolve-inconsistencies: Align terms, numbers, and claims; use when the same claim differs across docs; guardrail: pick a canonical source and align others. `consistency/resolve-inconsistencies.md`
- align-terminology: Normalize domain terminology; use when terms are overloaded; guardrail: define terms before rewriting usage. `consistency/align-terminology.md`
- align-cross-docs: Align overlapping topics across files; use when topics overlap across files; guardrail: keep one canonical location and cross-link. `consistency/align-cross-docs.md`

### Labels and definitions (`labels/`)
- apply-labels: Apply clarity labels to statements; use when intent is unclear; guardrail: prefer section defaults over inline labels. `labels/apply-labels.md`
- strengthen-definitions: Define key terms once and use them consistently; use when terms are fuzzy; guardrail: update all usages after definitions change. `labels/strengthen-definitions.md`

### Content completeness (`content/`)
- add-context: Add background and framing; use when readers cannot orient quickly; guardrail: keep framing concise and relevant. `content/add-context.md`
- fill-gaps: Add missing information or placeholders; use when key info is missing; guardrail: label unknowns as Question or Assumption. `content/fill-gaps.md`

### Decisions and tradeoffs (`decisions/`)
- document-decisions: Make key decisions explicit; use when choices are implicit; guardrail: include rationale and scope. `decisions/document-decisions.md`
- document-tradeoffs: Capture tradeoffs and their rationale; use when constraints or priorities collide; guardrail: tie tradeoffs to goals. `decisions/document-tradeoffs.md`
- capture-alternatives: Document alternative paths; use when options were considered; guardrail: record why each was not chosen. `decisions/capture-alternatives.md`

### Research and business (`research/`)
- define-problem-statement: Make the problem and affected audience explicit; use when the why is fuzzy; guardrail: avoid solution framing. `research/define-problem-statement.md`
- surface-assumptions-hypotheses: Convert assumptions into testable hypotheses and questions; use when uncertainty is implicit; guardrail: keep scope small and testable. `research/surface-assumptions-hypotheses.md`
- capture-user-needs: Capture personas, needs, and use cases; use when user context is thin; guardrail: keep needs separate from solutions. `research/capture-user-needs.md`
- capture-market-context: Capture market conditions and alternatives; use when positioning is unclear; guardrail: link to sources where possible. `research/capture-market-context.md`
- document-business-case: Record business objectives and value; use when business rationale is unclear; guardrail: include benefits, costs, and success criteria. `research/document-business-case.md`
- synthesize-research: Convert research into findings and insights; use when research is raw; guardrail: separate observations, findings, and insights. `research/synthesize-research.md`

### Requirements and success (`requirements/`)
- derive-requirements: Convert goals into requirements; use when goals exist without requirements; guardrail: avoid solution bias. `requirements/derive-requirements.md`
- define-workflows: Make the end-to-end flow explicit; use when process steps are implied; guardrail: keep steps testable and scoped. `requirements/define-workflows.md`
- define-interfaces: Specify inputs, outputs, and contracts; use when boundaries are implicit; guardrail: include error behavior. `requirements/define-interfaces.md`
- enumerate-edge-cases: Capture edge cases and expected behavior; use when failure modes are hidden; guardrail: avoid turning edge cases into core flows. `requirements/enumerate-edge-cases.md`
- define-acceptance-criteria: Make requirements testable; use when requirements exist; guardrail: make criteria testable. `requirements/define-acceptance-criteria.md`
- define-quality-attributes: Capture non-functional requirements; use when non-functional needs are implicit; guardrail: add measurable targets. `requirements/define-quality-attributes.md`
- define-success-criteria: Define measurable success conditions; use when success is vague; guardrail: tie metrics to goals or objectives. `requirements/define-success-criteria.md`

### Risk and dependencies (`risk/`)
- identify-risks: Surface risks with triggers and impact; use when risks are implied; guardrail: include triggers and impact. `risk/identify-risks.md`
- add-mitigations: Pair risks with mitigations; use when risks are listed; guardrail: link each mitigation to a risk. `risk/add-mitigations.md`
- map-dependencies: Make dependencies explicit; use when external inputs matter; guardrail: add status and sequencing notes. `risk/map-dependencies.md`

### Traceability (`traceability/`)
- add-evidence-links: Link claims to sources; use when claims lack sources; guardrail: remove or reframe unsupported claims. `traceability/add-evidence-links.md`
- cross-link-docs: Connect related docs and reduce duplication; use when related docs are isolated; guardrail: keep one canonical source. `traceability/cross-link-docs.md`

### Style (`style/`)
- improve-writing: Reduce ambiguity and filler; use when prose is vague or bloated; guardrail: preserve meaning. `style/improve-writing.md`
- apply-positive-framing: Rewrite negative definitions into affirmative descriptions; use when definitions are negative; guardrail: keep explicit Non-Goals. `style/apply-positive-framing.md`

### Scope and follow-up (`scope/`)
- clarify-scope: Clarify what is in and out of scope; use when boundaries are implicit; guardrail: separate Goal, Scope, and Non-Goal. `scope/clarify-scope.md`
- capture-open-questions: Capture missing information for follow-up; use when unknowns block clarity; guardrail: prioritize by impact. `scope/capture-open-questions.md`
