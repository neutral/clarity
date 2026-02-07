# Action: improve-flow

Class: structural

Status: compatibility alias of `shape-flow`.

Purpose: Make pages/sections read in a logical order.

Inputs:
- Scope (paths/headings/labels)
- Audience expectations

Preconditions:
- Preconditions for `shape-flow` are met.

Actions:
1) Run `shape-flow`.
2) Emphasize section ordering and transitions for narrative clarity.

Outputs:
- Clearer structure and scannability with normalized heading/flow shape.

Quality checks:
- `shape-flow` quality checks pass.
- Section ordering supports the target audience task flow.

Return-to-intake triggers:
- Any `shape-flow` return-to-intake trigger is encountered.
- Flow changes require semantic/decision edits outside structural intent.

Plan/report logging:
- Plan trace line: `improve-flow | trigger | sections reordered | checks passed`.
- Report summary: flow improvements and unresolved ordering conflicts.
