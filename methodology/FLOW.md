# Clarity Flow Library

Flows state the clarity outcome the author wants as well as the steps the agent needs to
carry out to achieve it. Always define a target set first.

If no flow fits, agent can compose a custom flow by selecting steps from
`steps/index.md` and naming the flow after the intended clarity outcome.

## How to choose a flow

- State the intended clarity change in one sentence.
- Pick the flow whose target outcome matches that sentence.
- Only then execute the mapped steps.

## Flow library

Each flow maps a specific author need to a sequence of steps from the library.
Use the flow name as the selection primitive, then execute the mapped steps.

Flow naming pattern:

- `Start state -> target clarity outcome`
- or `Author intent -> target clarity outcome`

### Flow: WIP notes -> structured project set

Author need: Turn rough notes into a structured project set with explicit intent.
Start: WIP notes, mixed intents, minimal headings.
Target: structured, labeled project set with clear gaps captured.
Mapped steps (passes):

- Pass 1: create-outline, normalize-headings, add-context
- Pass 2: apply-labels, fill-gaps, capture-open-questions
- Pass 3: improve-flow, improve-writing

### Flow: Overlapping docs -> canonical source

Author need: Collapse overlap into a single authoritative source.
Start: multiple docs cover the same topic with drift.
Target: one canonical source with aligned references.
Mapped steps: align-cross-docs, resolve-inconsistencies, align-terminology, cross-link-docs

### Flow: Research notes -> project context

Author need: Convert research into project-ready context and framing.
Start: research-heavy notes without a clear problem framing.
Target: explicit problem statement, user needs, market context, and business case with evidence.
Mapped steps: define-problem-statement, surface-assumptions-hypotheses, capture-user-needs, capture-market-context, document-business-case, synthesize-research, add-evidence-links, define-success-criteria

### Flow: Design exploration -> decision-ready

Author need: Make design choices explicit and reviewable.
Start: alternatives discussed, decisions implicit.
Target: explicit decisions, tradeoffs, and alternatives.
Mapped steps: document-decisions, capture-alternatives, document-tradeoffs, add-evidence-links, clarify-scope

### Flow: Goals -> requirements

Author need: Turn goals into clear requirements.
Start: goals and needs exist, requirements are missing.
Target: requirements with acceptance criteria and quality attributes.
Mapped steps: derive-requirements, define-quality-attributes, define-acceptance-criteria, define-success-criteria, map-dependencies

### Flow: Ambiguous scope -> bounded project set

Author need: Establish clear scope boundaries to prevent drift.
Start: scope is unclear or shifting.
Target: explicit scope boundaries and non-goals for the project set.
Mapped steps: clarify-scope, apply-labels, capture-open-questions, document-decisions

### Flow: Terminology drift -> consistent language

Author need: Normalize language so terms mean one thing everywhere.
Start: terms are overloaded or inconsistent.
Target: stable glossary and consistent usage.
Mapped steps: strengthen-definitions, align-terminology, resolve-inconsistencies

### Flow: Risk-heavy project set -> mitigated project set

Author need: Turn risks into managed, actionable items.
Start: risks are noted but unmanaged.
Target: risks with mitigations and dependency clarity for the project set.
Mapped steps: identify-risks, map-dependencies, add-mitigations, document-tradeoffs

### Flow: Low traceability -> evidence-backed docs

Author need: Link key claims and decisions to sources.
Start: claims exist without references or sources.
Target: evidence-linked claims and cross-referenced docs.
Mapped steps: add-evidence-links, cross-link-docs

### Flow: Project set draft -> detailed clarity

Author need: Make high-detail sections precise enough to act on without hidden gaps.
Start: project set exists but detail depth is implicit or loose.
Target: requirements with interfaces, workflows, edge cases, and acceptance criteria.
Mapped steps: clarify-scope, derive-requirements, define-workflows, define-interfaces, enumerate-edge-cases, define-acceptance-criteria, define-quality-attributes, map-dependencies, improve-writing
