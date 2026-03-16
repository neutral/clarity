# Clarity Library

This file is authoritative for what the Clarity `library/` is, how it is
structured, and how it is consumed at runtime.

## Start Here

Use this file when you need to answer:

- what belongs in `library/` versus `methodology/`
- how the library is organized
- which path context applies in the source repo versus the installed runtime

Use these next documents:

- `../library/overview.md`: runtime library entrypoint
- `WORKFLOW.md`: when and how the library is loaded during a pass

## Path Context

Source repo:

- `library/`
- `library/overview.md`

Installed runtime:

- `.methodologies/clarity/library/`
- `.methodologies/clarity/library/overview.md`

## Purpose

The library is the reusable capability layer for Clarity. It holds selectable
resources that `WORKFLOW.md` uses at runtime.

In short:

- `methodology/` defines the process contract
- `library/` provides reusable capabilities applied within that contract

## Structure

The Clarity library is organized as:

- `../library/overview.md`: runtime entrypoint and routing surface
- `../library/presets/`: outcome-focused preset library
- `../library/actions/`: tactical action library
- `../library/personas/`: reasoning and audience control profiles
- `../library/claims/`: claim catalog and claim-specific evidence guidance

`actions/scripts/` may exist for shared helper scripts when needed.

## Runtime Usage Boundaries

At runtime, agents should:

1. Start at `../library/overview.md`.
2. Select a preset from `../library/presets/overview.md`.
3. Use action-family and action-expansion guidance from
   `../library/actions/index.md`.
4. Load `../library/claims/README.md` and the relevant claim type folders for
   active trust questions.
5. Use `../library/personas/README.md` and preset-defined personas to shape the
   pass.

Record selected resources and active claim types in plan, report, and evidence
artifacts for traceability.

## Installed Runtime Expectations

- installed `library/` content is consumed locally from
  `.methodologies/clarity/library/`
- source provenance is tracked in `.methodologies/clarity/status.md`
- runtime references should use local installed paths, not source-repo paths
