# Clarity Labels

This file is authoritative for label application rules and the Clarity label
taxonomy.

## Start Here

Use this file when you need to answer:

- which labels are available by default
- how labels are applied in pages and sections
- when to use the appendix taxonomy

Use these next documents:

- `appendix/additional-labels.md`: extended labels when the core set is not
  enough
- `WORKFLOW.md`: pass sequence and compliance rules

## Core label set

For most passes, use this set by default:

- Fact, Assumption, Question, Definition
- Goal, Non-Goal, Scope, Constraint
- Decision, Rationale, Tradeoff
- Requirement, Acceptance Criterion
- Risk, Mitigation

Operational default: use section-default inference so pages stay readable. In
early drafts, focus on labeling the sections that matter. In stable or
decision-ready pages, every substantive statement should be labelable by the
core set below.

## Applying Labels

Prefer inference so pages read naturally. Use this cascade:

1. Page defaults (optional)
2. Section defaults (preferred)
3. Block overrides for short exceptions
4. If labels still mix, split into sub-sections

Page defaults example:

```text
Label defaults:
- Goals -> Goal
- Non-Goals -> Non-Goal
- Decisions -> Decision
- Risks -> Risk
```

Section defaults (preferred): `## Goals (Goal)` / `## Risks [Risk]`
Block override: `### Assumptions (Assumption)` or `<!-- Label: Assumption -->`
Inline labels: avoid in normal passes; if unavoidable, convert them to section
defaults or block overrides in the same pass.

Inference rules:

- heading label or label map sets the default for the section
- statements inherit the section label unless overridden
- if labels mix, split the section or add a block override; avoid per-bullet
  inline labels

## Core Labels

### Core Statements

#### Fact

Definition: A verifiable statement that is true now.
Use: Grounding context, current behavior, observed data; keep present tense.
Avoid: Predictions or intended actions.

#### Assumption

Definition: A statement treated as true but not verified.
Use: Temporary placeholders; track explicitly and validate.
Avoid: Long-term documentation without a validation approach.

#### Definition

Definition: The precise meaning of a term used in the project wiki.
Use: Glossary entries and term disambiguation; keep in a glossary-style
section.
Avoid: Explaining behavior; keep it semantic.

#### Question

Definition: An unresolved item that blocks clarity.
Use: Tracking what must be answered.
Avoid: Rhetorical questions.

### Goals And Scope

#### Goal

Definition: A desired outcome the project supports.
Use: Direction and intended impact; keep explicit and separate from Non-Goals.
Avoid: Detailed requirements.

#### Non-Goal

Definition: An explicit boundary of what is not intended.
Use: Preventing scope creep and misinterpretation; keep explicit and separate
from Goals.
Avoid: Vague exclusions.

#### Scope

Definition: The explicit boundaries of what is in scope.
Use: Clarify included areas, teams, or surfaces.
Avoid: Unstated assumptions.

#### Constraint

Definition: A limiting condition that must be respected.
Use: Fixed boundaries like budget, time, or platform.
Avoid: Goals phrased as constraints.

#### Requirement

Definition: A must-have behavior or constraint.
Use: Mandatory properties or behaviors.
Avoid: Optional preferences.

#### Acceptance Criterion

Definition: A testable statement used to accept a requirement.
Use: QA, validation, or sign-off checks.
Avoid: High-level goals.

### Decisions And Risk

#### Decision

Definition: A chosen path among alternatives.
Use: Documenting rationale and permanence.
Avoid: Recording a tentative path as decided.

#### Rationale

Definition: The reason a decision or requirement exists.
Use: Explaining the why behind choices.
Avoid: Restating the decision itself.

#### Tradeoff

Definition: A deliberate balance between competing goals.
Use: When sacrificing one dimension for another.
Avoid: Hidden compromises.

#### Risk

Definition: A potential negative outcome and its trigger.
Use: Uncertainty or known hazards.
Avoid: Generic concerns without triggers.

#### Mitigation

Definition: An action or control that reduces a risk.
Use: Concrete actions tied to a specific risk.
Avoid: Vague intentions.

## Domain Profiles

Keep the full taxonomy as a superset. Activate only the subset needed for the
current pass:

- Product profile: Goal, Non-Goal, Scope, Requirement, Acceptance Criterion,
  Decision, Rationale, Tradeoff
- Research profile: Assumption plus research labels from
  `appendix/additional-labels.md`
- Risk/operations profile: Risk, Mitigation, Constraint, plus extended
  operations labels from `appendix/additional-labels.md`

## When Core Labels Are Not Enough

If no core label fits:

1. Use the closest core label temporarily.
2. Record the mismatch in plan or report as an explicit `Question`.
3. Check `appendix/additional-labels.md` for an existing extended label before
   proposing any new taxonomy.
4. If no appendix label fits, propose a taxonomy update in the report.
