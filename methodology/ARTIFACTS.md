# Clarity Artifacts

This file defines runtime artifacts for Clarity and how each artifact is used
in installed runs.

## Runtime Templates

- `templates/plan.md`: template for `.methodologies/clarity/scratch/plan.md`.
- `templates/report.md`: template for `.methodologies/clarity/scratch/report.md`.
- `templates/canonical-sources.md`: canonical source register template.
- `templates/decision-ledger.md`: decision ledger template.
- `templates/receipt.md`: per-action receipt template.

## Installed Runtime State

- `.methodologies/clarity/status.md`: installed status file with source tracking
  plus operating scope (`entire-repo` or `selected-paths`) and path
  permissions (`read and write allowed`, `read-only`, `no access`).
- `.methodologies/clarity/scratch/`: runtime folder in consuming repos that may
  contain `plan.md`, `report.md`, `canonical-sources.md`,
  `decision-ledger.md`, and `receipts/`.
