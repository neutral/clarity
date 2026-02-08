# Action: resolve-inconsistencies

Class: deterministic

Status: compatibility alias of `canonicalize-topic`.

Purpose: Align terms, numbers, and claims across pages.

Inputs:
- Scope (paths/headings/labels)

Preconditions:
- Preconditions for `canonicalize-topic` are met.

Actions:
1) Run `canonicalize-topic`.
2) Emphasize conflict resolution for terms, numbers, and claims.
3) Mark unresolved authority conflicts as `Question`.

Outputs:
- Consistent terms and corrected statements via canonical topic mapping.

Quality checks:
- Term/number/claim inconsistencies are resolved or explicitly labeled `Question`.
- Canonical references are present for corrected statements.

Return-to-intake triggers:
- Any `canonicalize-topic` return-to-intake trigger is encountered.

Plan/report logging:
- Plan trace line: `resolve-inconsistencies | trigger | conflicts resolved | unresolved count | checks passed`.
- Report summary: inconsistency categories fixed and unresolved authority questions.
