# Clarity Claim Type Templates

This folder is the source template for new claim type families.

## Start Here

Use this folder when you need to create a new claim type under `library/claims/`.
The runtime claim catalog lives in `../../../library/claims/README.md`.

## Starter Shape

- Copy `claim-type-template/` to `library/claims/<claim-type-name>/`.
- Rename `<claim-type-name>` to a unique kebab-case folder name.
- Fill in each file with claim-type-specific guidance.

## Required Files

- `claim.md`: purpose, applicability, trust question, concrete claim shape,
  required Clarity artifacts, and related claim types
- `evidence.md`: field-by-field evidence capture rules, verdict guidance, and
  evidence thread rules
- `examples.md`: example concrete claims, observations, verdicts, and
  anti-patterns
