# Clarity

Clarity is a flexible, progressive technique for enhancing a project wiki (pages,
structure, labels, definitions, and links) in focused pass runs so teams can use an
agent to deepen any dimension of the project and make it more concrete and
reviewable.

It is designed for real project wikis: clear controls up front (scope, presets,
personas, checks) and repeatable execution details (actions, labels, audit) so
updates feel guided instead of ad hoc.

## This Repo

- `methodology/` contains the frozen Clarity core artifacts (CLARITY, WORKFLOW,
  ARTIFACTS, LIBRARY, LABELS, templates, appendix).
- `library/` contains the initial Clarity library (overview, presets, actions,
  personas).
- `setup/` contains setup instructions for installing Clarity in a target repo.
- `scripts/` contains a helper to copy methodology + library into `.methodologies/clarity/`.

## Quickstart (Use in a Target Repo)

1. Copy methodology + library into the target repo under `.methodologies/clarity/`:
   `scripts/copy-clarity.sh /path/to/target-repo [--scope entire-repo|selected-paths] [--scope-path <repo-relative-path> ...]`
2. Add the Clarity section to the target repo `AGENTS.md`:
   See `setup/clarity-setup.md`.
3. Set `.methodologies/clarity/status.md` **Operating scope** (`entire-repo` or
   `selected-paths`) and **Permissions** (`read and write allowed` /
   `read-only` / `no access`) for your run boundaries.
4. Kickstart a pass run by prompting an agent with scope + intent, and tell it to follow `.methodologies/clarity/methodology/WORKFLOW.md`:

The agent should select a preset from
`.methodologies/clarity/library/overview.md`, then use
`.methodologies/clarity/library/presets/overview.md` and
`.methodologies/clarity/library/actions/index.md` as directed there; create/update
`.methodologies/clarity/scratch/plan.md`, initialize
`.methodologies/clarity/scratch/canonical-sources.md`,
`.methodologies/clarity/scratch/decision-ledger.md`, and
`.methodologies/clarity/scratch/receipts/`, then execute → audit → polish →
report.

## Method Flow (High Level -> Detail)

1. `methodology/CLARITY.md`: purpose, system model, and control knobs.
2. `methodology/WORKFLOW.md`: run sequence and compliance gates.
3. `library/overview.md`: library entrypoint for preset and action discovery.
4. `library/presets/overview.md`: outcome playbooks.
5. `library/actions/index.md`: tactical action library.
6. `methodology/ARTIFACTS.md`: artifact inventory and runtime mappings.
7. `methodology/LIBRARY.md`: library layer purpose and structure.
8. `methodology/LABELS.md`: semantic labeling model.
9. `methodology/appendix/additional-labels.md`: extended label taxonomy.
10. `methodology/appendix/clarity-dimensions.md`: stable dimension reference.
11. `methodology/appendix/page-types.md`: stable page-type reference.

## Use in another repo

See `setup/clarity-setup.md` for copy/install actions and the AGENTS snippet.

## Contributing

Please see our [Contributing Guide](CONTRIBUTING.md) for details.

Source files should include `SPDX-License-Identifier: (CC0-1.0 OR 0BSD)` where
applicable.

## License

This project is released under a dual-license model. Choose either:

- **[CC0-1.0](LICENSE.CC0-1.0)** - Creative Commons Zero v1.0 Universal
- **[0BSD](LICENSE.0BSD)** - Zero-Clause BSD

This applies to all project materials.
