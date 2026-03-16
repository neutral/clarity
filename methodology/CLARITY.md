# Clarity

Clarity is a methodology for improving a project wiki through small,
repeatable passes that make structure, terminology, evidence, and decision
surfaces more explicit.

## Start Here

This file is the methodology entrypoint.

It is authoritative for:

- the Clarity model
- core terminology
- control-surface framing
- canonical reading order across methodology and library docs

Use these next documents:

- `WORKFLOW.md`: runtime contract for a pass
- `ARTIFACTS.md`: runtime artifact inventory and template mappings
- `LIBRARY.md`: library structure and usage boundaries
- `LABELS.md`: label rules and taxonomy
- `../library/overview.md`: runtime library selection entrypoint

## Path Context

Source repo:

- `methodology/CLARITY.md`

Installed runtime:

- `.methodologies/clarity/methodology/CLARITY.md`

## Model

One Clarity pass works on a bounded slice of a project wiki. A pass may:

- restructure navigation and hierarchy so information is easier to find
- deepen one dimension such as decisions, requirements, or risk
- strengthen scanability, definitions, and explicit scope
- preserve trust-relevant claims as evidence while the work happens

The methodology separates:

- process contract in `WORKFLOW.md`
- reusable capabilities in `../library/`
- runtime artifacts in `ARTIFACTS.md`

## Core Design Principles

- Separate process from configuration. `WORKFLOW.md` owns the pass sequence.
  Presets, actions, claims, and personas provide reusable controls inside that
  sequence.
- Decide stable parameters early. Scope, intended outcome, personas, checks,
  and canonical sources should be fixed before execution expands.
- Prefer bounded scope. Small, repeatable slices reduce drift and improve
  review quality.
- Prefer canonicality over duplication. One source of truth per topic is
  better than repeated facts across pages.
- Make uncertainty explicit. Unknowns should become `Question` or
  `Assumption`, not implied certainty.
- Keep evidence live during the pass. Trust-relevant claims should be preserved
  while they are still inspectable.

## Control Surfaces

Clarity uses a small set of control surfaces to keep passes predictable:

- Scope: the slice of the project wiki being changed
- Preset: the intended outcome and default action/check bundle
- Personas: the reasoning and audience controls for the pass
- Actions: the concrete tactics applied during execution
- Claim types: the trust-relevant assertions preserved as evidence
- Labels: the semantic model used to keep statements explicit
- Compliance controls: scope-drift budget, change classes, approvals, and
  receipts
- Permissions: path-level access controls from `status.md`

## Terminology

- Project wiki: the full collection of project pages and structure
- Wiki page: one page in the project wiki, usually one Markdown file
- Scope: the slice of the wiki in focus for a pass, plus any bounded
  second-order fixes
- Preset: an outcome-focused preset from `../library/presets/overview.md`
- Pass run: one bounded execution of `WORKFLOW.md`
- Claim type: a reusable run-level claim definition from `../library/claims/`
- Evidence item: one run-scoped proof thread for one concrete claim

## Persona Model

Each pass uses explicit personas with two roles:

- Think-as persona: how the agent reasons about the scope
- Write-for persona: who the output is optimized for

Personas are control points, not style tags. The default polish persona is
`technical-editor`. Persona selection guidance lives in
`../library/personas/README.md`.

## Reading Order

1. `CLARITY.md` (this file): methodology model and document map
2. `WORKFLOW.md`: runtime sequence, gates, and evidence loop
3. `../library/overview.md`: runtime library entrypoint
4. `../library/presets/overview.md`: preset catalog and selection model
5. `../library/actions/index.md`: action catalog and action expansion rule
6. `../library/claims/README.md`: claim catalog and claim-family rules
7. `../library/personas/README.md`: persona selection model and persona-family
   rules
8. `ARTIFACTS.md`: runtime artifact inventory and template mappings
9. `LIBRARY.md`: library structure and usage boundaries
10. `LABELS.md`: label rules and taxonomy
11. `templates/`: runtime artifact templates
12. `appendix/`: stable reference material

## Scope Shape

Use this shape when describing scope in a plan or report:

- Scope ID: short identifier for the pass
- Paths: file, directory, or glob
- Headings: optional `H1 > H2 > H3` path
- Labels: optional label filter
- Exclusions: optional paths or headings to skip
- Second-order fixes: bounded mechanical updates allowed outside primary scope

Examples:

- `S1: paths=wiki/overview.md`
- `S2: paths=wiki/overview.md, headings=Goals`
- `S3: paths=wiki/design/, labels=Risk`

## Done Criteria

- Changes are limited to scope plus approved bounded second-order fixes.
- Active run claims are captured as evidence with current verdicts.
- Open questions remain explicit.
- The report explains what changed, why, what was checked, and where evidence
  lives.

## Interface Map

- Runtime contract: `WORKFLOW.md`
- Artifact inventory: `ARTIFACTS.md`
- Library boundaries: `LIBRARY.md`
- Label rules: `LABELS.md`
- Runtime library entrypoint: `../library/overview.md`

## Appendix

Use the appendix as reference material, not as a second rule owner:

- `appendix/clarity-dimensions.md`: dimension reference for pass selection
- `appendix/page-types.md`: page-type reference for structure and navigation
- `appendix/additional-labels.md`: extended label reference when the core set
  is not enough
