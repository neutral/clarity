# Clarity Setup

Use this repo as the canonical source for Clarity. Copy the contents of
`methodology/` and `library/` into `.methodologies/clarity/` in project wiki
repos and reference it from `AGENTS.md`.

## Folder setup

1. Copy `methodology/` and `library/` from this repo into:
   - `.methodologies/clarity/methodology/`
   - `.methodologies/clarity/library/`
2. Keep `.methodologies/clarity/` in the repo root; if you relocate it, update the
   paths below.

## Helper script

Use the helper script to copy `methodology/` + `library/` into another repo:

```
scripts/copy-clarity.sh /path/to/target-repo
```

Add `--delete` to remove files from target methodology/library folders that no
longer exist here. The `--delete` flag requires `rsync`.

The helper also:

- Creates `.methodologies/clarity/scratch/` (empty by default; files are
  initialized by the agent when a pass starts).
- Creates/updates `.methodologies/clarity/.gitignore` to ignore
  `.methodologies/clarity/methodology/` and `.methodologies/clarity/library/`.
- Creates `.methodologies/clarity/status.md` if missing and records primary local
  methodology/library source paths under **Sources**.
- Initializes a **Permissions** section in `.methodologies/clarity/status.md`
  (`read and write allowed`, `read-only`, `no access`) so path boundaries are set
  during setup and editable for later runs.

## AGENTS.md addition

Add this section to the target repo `AGENTS.md`:

```
## Clarity
- Use Clarity for doc work: start with `.methodologies/clarity/methodology/WORKFLOW.md`.
- Select a preset from `.methodologies/clarity/library/presets/overview.md` (or propose a custom preset for approval if none fits).
- Keep `.methodologies/clarity/scratch/plan.md`, `.methodologies/clarity/scratch/report.md`, `.methodologies/clarity/scratch/canonical-sources.md`, and `.methodologies/clarity/scratch/decision-ledger.md` updated.
- Write one receipt per applied action under `.methodologies/clarity/scratch/receipts/`.
- Classify substantive edits (`cosmetic` / `structural` / `semantic` / `decision-impacting`) and require explicit approval records for `semantic` / `decision-impacting` changes.
- Read `.methodologies/clarity/status.md` before each pass and enforce its **Permissions** section (`read and write allowed` / `read-only` / `no access`) as hard boundaries.
- Guardrails: stay within scope (bounded link/terminology fixes are OK); remove outdated info rather than leaving disclaimers; do not mention personas/meta-role narration in outputs.
```

## Updating Clarity in a target repo

Re-copy the contents of `methodology/` + `library/` into
`.methodologies/clarity/` when updates are needed or use
`scripts/copy-clarity.sh`.

Update `.methodologies/clarity/status.md` **Sources** only when methodology/library
source locations change. Update **Permissions** whenever allowed read/write/no-access
boundaries change.
