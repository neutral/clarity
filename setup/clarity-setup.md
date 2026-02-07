# Clarity Setup

Use this repo as the canonical source for Clarity. Copy the contents of
`methodology/` into `.clarity/` in project wiki repos and reference it
from `AGENTS.md`.

## Folder setup

1. Copy `methodology/` from this repo into the target repo root as `.clarity/`.
2. Keep `.clarity/` in the repo root; if you relocate it, update the paths below.

## Helper script

Use the helper script to copy `methodology/` into another repo:

```
scripts/copy-clarity.sh /path/to/target-repo
```

Add `--delete` to remove files from the target `.clarity/` that no longer exist here.
The `--delete` flag requires `rsync`.

## AGENTS.md addition

Add this section to the target repo `AGENTS.md`:

```
## Clarity
- Use Clarity for doc work: start with `.clarity/WORKFLOW.md`.
- Select a preset from `.clarity/presets/overview.md` (or propose a custom preset for approval if none fits).
- Keep `.clarity/workflow/plan.md`, `.clarity/workflow/report.md`, `.clarity/workflow/canonical-sources.md`, and `.clarity/workflow/decision-ledger.md` updated.
- Write one receipt per applied action under `.clarity/workflow/receipts/`.
- Classify substantive edits (`cosmetic` / `structural` / `semantic` / `decision-impacting`) and require explicit approval records for `semantic` / `decision-impacting` changes.
- Guardrails: stay within scope (bounded link/terminology fixes are OK); remove outdated info rather than leaving disclaimers; do not mention personas/meta-role narration in outputs.
```

## Updating Clarity in a target repo

Re-copy the contents of `methodology/` into the target `.clarity/` folder when
updates are needed or use `scripts/copy-clarity.sh`.
