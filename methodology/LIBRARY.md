# Clarity Library

This document defines what the Clarity `library/` is for and how it is
structured.

## Purpose

The library is the reusable capability layer for Clarity. It holds selectable
execution resources that `WORKFLOW.md` uses at runtime.

In short:

- `methodology/` defines the process contract.
- `library/` provides reusable capabilities applied within that process.

## Structure

The Clarity library is organized as:

- `../library/overview.md`: library entrypoint and selection guidance.
- `../library/presets/`: outcome-focused playbooks.
- `../library/actions/`: tactical units used during execution.
- `../library/personas/`: reasoning and writing control profiles.

`actions/scripts/` may exist for shared helper scripts when needed.

## Agent usage

At runtime, agents should:

1. Start at `../library/overview.md`.
2. Select the best-fit library capability for the current intent/scope.
3. Use the mapped personas and actions from the selected library resources.
4. Record selected resources in plan/report artifacts for traceability.

## Runtime expectations

- Installed `library/` content is consumed locally from
  `.methodologies/clarity/library/`.
- Sources/provenance are tracked in `status.md`, while execution references the
  local library paths.
