# Clarity Artifacts

This file is authoritative for the runtime artifact inventory and the mapping
from source templates to installed runtime artifacts.

## Start Here

Use this file when you need to answer:

- which runtime artifacts must exist for a pass
- which source template initializes each runtime artifact
- which runtime paths are required versus optional

Use these next documents:

- `WORKFLOW.md`: when the artifact is created or updated
- `templates/`: field layout for each artifact

## Path Context

Source repo:

- `methodology/ARTIFACTS.md`
- `methodology/templates/`

Installed runtime:

- `.methodologies/clarity/methodology/ARTIFACTS.md`
- `.methodologies/clarity/scratch/`

## Runtime Artifact Inventory

- `.methodologies/clarity/status.md`: installed status file with source
  tracking, operating scope, and path permissions
- `.methodologies/clarity/scratch/plan.md`: required shared plan and run log
- `.methodologies/clarity/scratch/report.md`: required end-of-run report
- `.methodologies/clarity/scratch/canonical-sources.md`: required canonical
  source register
- `.methodologies/clarity/scratch/decision-ledger.md`: required locked/open
  decision ledger
- `.methodologies/clarity/scratch/receipts/`: required folder for per-action
  receipts
- `.methodologies/clarity/scratch/evidence/<pass-id>/index.md`: required
  evidence run index for one pass
- `.methodologies/clarity/scratch/evidence/<pass-id>/EVIDENCE*.md`: required
  evidence items for active claims
- `.methodologies/clarity/scratch/evidence/<pass-id>/assets/`: optional raw
  artifact folder

## Template To Runtime Mapping

- `templates/plan.md` ->
  `.methodologies/clarity/scratch/plan.md`
- `templates/report.md` ->
  `.methodologies/clarity/scratch/report.md`
- `templates/canonical-sources.md` ->
  `.methodologies/clarity/scratch/canonical-sources.md`
- `templates/decision-ledger.md` ->
  `.methodologies/clarity/scratch/decision-ledger.md`
- `templates/receipt.md` ->
  `.methodologies/clarity/scratch/receipts/<receipt-file>.md`
- `templates/evidence/index.md` ->
  `.methodologies/clarity/scratch/evidence/<pass-id>/index.md`
- `templates/evidence/EVIDENCE.md` ->
  `.methodologies/clarity/scratch/evidence/<pass-id>/<evidence-file>.md`

## Runtime Notes

- `status.md` defines source tracking, operating scope, and path permissions.
- `scratch/` is runtime state for the current repo and branch.
- one active `plan.md` is expected per branch
- evidence is organized as one run folder per `Pass ID`
