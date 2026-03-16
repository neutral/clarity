# Clarity Setup

Use this file to install or update Clarity in another repo.

## Start Here

This file is authoritative for:

- copying Clarity from the source repo into a target repo
- initializing installed-runtime folders and status files
- adding the Clarity section to a target repo `AGENTS.md`

Use these next documents:

- `../README.md`: source-repo entrypoint
- `.methodologies/clarity/methodology/WORKFLOW.md` in the target repo: runtime
  contract after installation

## Path Context

Source repo:

- `methodology/`
- `library/`
- `scripts/copy-clarity.sh`

Installed runtime:

- `.methodologies/clarity/methodology/`
- `.methodologies/clarity/library/`
- `.methodologies/clarity/status.md`
- `.methodologies/clarity/scratch/`

## Install Clarity In A Target Repo

1. Copy `methodology/` and `library/` from this source repo into the target
   repo under `.methodologies/clarity/`.
2. Keep `.methodologies/clarity/` in the repo root. If you relocate it, update
   all installed-runtime paths accordingly.
3. Add the Clarity section to the target repo `AGENTS.md`.
4. Set operating scope and permissions in
   `.methodologies/clarity/status.md`.

## Helper Script

Use the helper script from the source repo:

```bash
scripts/copy-clarity.sh /path/to/target-repo [--delete] [--scope entire-repo|selected-paths] [--scope-path <repo-relative-path> ...]
```

Add `--delete` to remove files from target methodology or library folders that
no longer exist here. The `--delete` flag requires `rsync`.

Scope flags:

- `--scope entire-repo`: set installed runtime operating scope to the whole
  repo
- `--scope selected-paths --scope-path <path> [...]`: set installed runtime
  operating scope to one or more repo-relative folders or files
- if scope flags are omitted, `status.md` is initialized with placeholders

The helper also:

- creates `.methodologies/clarity/scratch/`
- creates or updates `.methodologies/clarity/.gitignore` to ignore copied
  methodology and library content
- ensures `.methodologies/clarity/status.md` includes **Sources**,
  **Operating scope**, and **Permissions**
- ensures **Permissions** has `Read and write allowed`, `Read-only`, and
  `No access` buckets with `(none)` defaults

## AGENTS.md Addition

Add this section to the target repo `AGENTS.md`:

```md
## Clarity
- Use Clarity for doc work: start with `.methodologies/clarity/methodology/WORKFLOW.md`.
- Start library selection at `.methodologies/clarity/library/overview.md`, then use `.methodologies/clarity/library/presets/overview.md` and `.methodologies/clarity/library/actions/index.md` as directed there.
- Keep `.methodologies/clarity/scratch/plan.md`, `.methodologies/clarity/scratch/report.md`, `.methodologies/clarity/scratch/canonical-sources.md`, and `.methodologies/clarity/scratch/decision-ledger.md` updated.
- Write one receipt per applied action under `.methodologies/clarity/scratch/receipts/`.
- Classify substantive edits (`cosmetic` / `structural` / `semantic` / `decision-impacting`) and require explicit approval records for `semantic` / `decision-impacting` changes.
- Read `.methodologies/clarity/status.md` before each pass and enforce both **Operating scope** and **Permissions** (`read and write allowed` / `read-only` / `no access`).
- Guardrails: stay within scope (bounded link or terminology fixes are OK); remove outdated info rather than leaving disclaimers; do not mention personas or meta-role narration in outputs.
```

## Update An Existing Install

Re-copy `methodology/` and `library/` into `.methodologies/clarity/` when
updates are needed or use `scripts/copy-clarity.sh`.

Update `.methodologies/clarity/status.md` **Sources** only when methodology or
library source locations change. Update **Operating scope** and **Permissions**
when run boundaries change.
