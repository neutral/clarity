# Clarity

Clarity is a methodology for improving a project wiki through scoped passes
that make structure, terminology, evidence, and decision surfaces more
explicit.

## Start Here

This file is the source-repo entrypoint for Clarity.

It is authoritative for:

- what this repo contains
- how to install Clarity into another repo
- which canonical docs to open next

Use these next documents:

- `methodology/CLARITY.md`: methodology model, terminology, and document map
- `methodology/WORKFLOW.md`: runtime contract for a pass
- `library/overview.md`: runtime entrypoint for preset and action selection
- `setup/clarity-setup.md`: installation and update procedure

## Repo Layout

- `methodology/`: core methodology docs, templates, and appendix references
- `library/`: preset, action, claim, and persona libraries
- `setup/`: installation instructions for target repos
- `scripts/`: source-repo helper scripts

## Quickstart

Source repo:

- run `scripts/copy-clarity.sh /path/to/target-repo [--scope entire-repo|selected-paths] [--scope-path <repo-relative-path> ...]`

Installed runtime:

- set up Clarity under `.methodologies/clarity/`
- run passes from `.methodologies/clarity/methodology/WORKFLOW.md`

Recommended install flow:

1. From this source repo, copy `methodology/` and `library/` into the target
   repo under `.methodologies/clarity/`.
2. Add the Clarity section to the target repo `AGENTS.md` using
   `setup/clarity-setup.md`.
3. In the target repo, set `.methodologies/clarity/status.md` operating scope
   and permissions.
4. In the target repo, start the pass at
   `.methodologies/clarity/methodology/WORKFLOW.md`.

## Canonical Reading Order

1. `methodology/CLARITY.md`: methodology entrypoint and conceptual model
2. `methodology/WORKFLOW.md`: runtime sequence and hard gates
3. `library/overview.md`: runtime library selection entrypoint
4. `library/presets/overview.md`: preset catalog and selection model
5. `library/actions/index.md`: action catalog and action expansion rule
6. `library/claims/README.md`: claim catalog and claim-family rules
7. `library/personas/README.md`: persona selection model and persona-family
   rules
8. `methodology/ARTIFACTS.md`: runtime artifact inventory
9. `methodology/LIBRARY.md`: library structure and usage boundaries
10. `methodology/LABELS.md`: label rules and taxonomy

## Use In Another Repo

Use `setup/clarity-setup.md` for the source-repo install procedure and the
target-repo `AGENTS.md` snippet.

## Contributing

Please see our [Contributing Guide](CONTRIBUTING.md) for details.

Source files should include `SPDX-License-Identifier: (CC0-1.0 OR 0BSD)` where
applicable.

## License

This project is released under a dual-license model. Choose either:

- **[CC0-1.0](LICENSE.CC0-1.0)** - Creative Commons Zero v1.0 Universal
- **[0BSD](LICENSE.0BSD)** - Zero-Clause BSD

This applies to all project materials.
