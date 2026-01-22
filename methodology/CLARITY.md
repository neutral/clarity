# Clarity

Clarity is a progressive method for improving project docs so
collaborators can rely on them for precise, consistent context about the project and its various dimensions of analysis. Documents can start fully unstructured and WIP and are then refined using the Clarity methodology in successive passes across various dimensions.

## Goals

- Increase precision and consistency in every pass.
- Provide a library of flows and steps.

## Terminology

- Project docs repo: A repository that holds pre-code project docs and clarity artifacts; it contains no production code.
- Project set: The full collection of project docs.
- Project doc: A single document in the project set.
- Project doc type: A category of project doc based on focus (e.g., problem framing, decisions, requirements, delivery).

## How to use

1. Run the intake: `INTAKE.md`.
2. Create the target set (files, sections, subsections, labels).
3. Select a flow from `FLOW.md`.
4. Apply the loop in `LOOP.md`.
5. Report the run in the conversation using `templates/clarity-run.md`.

Flows express the intended clarity outcome and list the steps to be used to carry out the work.

## Targeting

Create a target set before applying a flow so the scope is precise and repeatable.
A target can be a whole file, a section/subsection, or a label filter across one
or more files.

Target set format (use in the brief/run):

- Target ID: short name for reference.
- Paths: file(s), directory, or glob.
- Headings: optional `H1 > H2 > H3` path.
- Labels: optional Clarity label filter.
- Exclusions: optional paths or headings to skip.

You can target a single label across a whole document or across a set of files
by combining paths and labels.

Examples:

- `T1: paths=docs/overview.md`
- `T2: paths=docs/overview.md, headings=Goals`
- `T3: paths=docs/design/, labels=Risk`
- `T4: paths=[docs/overview.md, docs/design/pruning.md], labels=Assumption`

## Artifacts

- `FLOW.md`: flow library mapped to steps.
- `LABELS.md`: clarity labels for statements in docs.
- `steps/index.md`: step library used by flows.
- `steps/`: category folders (structure, consistency, labels, content, decisions, research, requirements, risk, traceability, style, scope) with step files.
- `steps/scripts/`: shared step scripts.
- `LOOP.md`: end-to-end improvement loop.
- `INTAKE.md`: question set for doc owners.
- `templates/clarity-brief.md`: intake summary template.
- `templates/clarity-run.md`: run report template to share in conversation.

## Label application

- See `LABELS.md` for labeling rules, inference strategy, formats, and the taxonomy.

## Clarity dimensions

- Problem framing and outcomes: problem statement, success metrics, and why now.
- User and stakeholder needs and context: personas, jobs-to-be-done, journeys, and pain points.
- Market and competition: alternatives, differentiation, and positioning.
- Value proposition: core benefits, tradeoffs, and expected impact.
- Business viability and constraints: strategy fit, revenue/cost, pricing/channels, and policy limits.
- Solution concept and UX scope: workflows, MVP boundaries, and accessibility.
- Technical feasibility and architecture readiness: stack fit, integrations, and build vs buy.
- Data, security, and compliance readiness: data sources, privacy, and regulatory needs.
- Risk, assumptions, and validation: unknowns, hypotheses, and experiment approach.
- Delivery and operational readiness: resourcing, rollout, adoption, support, and SLOs.
