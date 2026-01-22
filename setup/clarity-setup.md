# Clarity Setup

Use this repo as the canonical source for Clarity. Copy the contents of
`methodology/` into `.clarity/` in project planning repos and reference it
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
- Purpose: improve project planning docs with progressive clarity passes.
- Location: `.clarity/` holds the Clarity artifacts; start at `.clarity/CLARITY.md`.
- Intake: complete `.clarity/INTAKE.md`.
- Apply: choose a flow from `.clarity/FLOW.md` and follow `.clarity/LOOP.md`.
- Labels: use `.clarity/LABELS.md` to tag statements and add missing definitions.
- Log: report each pass using `.clarity/templates/clarity-run.md`.
- Framework changes: update Clarity in the canonical repo and copy it into the target repo; do not apply Clarity to Clarity itself.
```

## Updating Clarity in a target repo

Re-copy the contents of `methodology/` into the target `.clarity/` folder when
updates are needed or use `scripts/copy-clarity.sh`.
