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

```bash
scripts/copy-clarity.sh /path/to/target-repo [--delete] [--scope entire-repo|selected-paths] [--scope-path <repo-relative-path> ...]
```

Add `--delete` to remove files from target methodology/library folders that no
longer exist here. The `--delete` flag requires `rsync`.

Use scope flags during setup when you already know boundaries:

- `--scope entire-repo`: set Clarity operating scope to the whole repo.
- `--scope selected-paths --scope-path <path> [...]`: set Clarity operating
  scope to one or more repo-relative folders/files.
- If scope flags are omitted, `status.md` is initialized with scope placeholders
  to fill from user input.

The helper also:

- Creates `.methodologies/clarity/scratch/`.
- Creates/updates `.methodologies/clarity/.gitignore` to ignore
  `.methodologies/clarity/methodology/` and `.methodologies/clarity/library/`.
- Ensures `.methodologies/clarity/status.md` includes **Sources** and
  **Operating scope** and **Permissions** sections.
- Ensures the **Permissions** section has required buckets
  (`Read and write allowed`, `Read-only`, `No access`) with `(none)` defaults.

## AGENTS.md addition

Add this section to the target repo `AGENTS.md`:

```md
## Clarity
- Use Clarity for doc work: start with `.methodologies/clarity/methodology/WORKFLOW.md`.
- Start library selection at `.methodologies/clarity/library/overview.md`, then use `.methodologies/clarity/library/presets/overview.md` and `.methodologies/clarity/library/actions/index.md` as directed there (or propose a custom preset for approval if none fits).
- Keep `.methodologies/clarity/scratch/plan.md`, `.methodologies/clarity/scratch/report.md`, `.methodologies/clarity/scratch/canonical-sources.md`, and `.methodologies/clarity/scratch/decision-ledger.md` updated.
- Write one receipt per applied action under `.methodologies/clarity/scratch/receipts/`.
- Classify substantive edits (`cosmetic` / `structural` / `semantic` / `decision-impacting`) and require explicit approval records for `semantic` / `decision-impacting` changes.
- Read `.methodologies/clarity/status.md` before each pass and enforce both **Operating scope** and **Permissions** (`read and write allowed` / `read-only` / `no access`).
- Guardrails: stay within scope (bounded link/terminology fixes are OK); remove outdated info rather than leaving disclaimers; do not mention personas/meta-role narration in outputs.
```

## Updating Clarity in a target repo

Re-copy the contents of `methodology/` + `library/` into
`.methodologies/clarity/` when updates are needed or use
`scripts/copy-clarity.sh`.

Update `.methodologies/clarity/status.md` **Sources** only when methodology/library
source locations change. Update **Operating scope** and **Permissions** when run
boundaries change.
