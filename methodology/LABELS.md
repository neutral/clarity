# Clarity Labels

All content in project docs needs to be labeled with one of the following ones in the list below. They categorize sentences,
bullets, or paragraphs so intent is clear, scannable, and consistent across docs. If an appropriate label is not found in this list, flag it and exit work.

## Applying labels

Prefer inference so docs read naturally. Use this cascade:

1. Document defaults (optional).
2. Section defaults (preferred).
3. Block overrides for short exceptions.
4. Inline labels only when mixed.

Document defaults (optional):

```
Label defaults:
- Goals -> Goal
- Non-Goals -> Non-Goal
- Research Findings -> Finding
- Decisions -> Decision
```

Section defaults (preferred): `## Goals (Goal)` / `## Risks [Risk]`
Block override: `### Assumptions (Assumption)` or `<!-- Label: Assumption -->`
Inline labels (exceptions): `- Risk: ...` / `- Assumption: ...`

Inference rules:

- Heading label or label map sets the default for the section.
- Statements inherit the section label unless overridden.
- If labels mix, split the section or label each bullet.

## Labels

### Core statements

#### Fact

Definition: A verifiable statement that is true now.
Use: Grounding context, current behavior, observed data; keep present tense.
Avoid: Predictions or intended actions.

#### Assumption

Definition: A statement treated as true but not verified.
Use: Temporary placeholders; track explicitly and validate.
Avoid: Long-term documentation without a validation approach.

#### Definition

Definition: The precise meaning of a term used in the docs.
Use: Glossary entries and term disambiguation; keep in a glossary-style section.
Avoid: Explaining behavior; keep it semantic.

#### Principle

Definition: A guiding rule that shapes decisions.
Use: Design intent and tradeoff framing.
Avoid: Specific implementation steps.

#### Decision

Definition: A chosen path among alternatives.
Use: Documenting rationale and permanence.
Avoid: Recording a tentative path as decided.

#### Alternative

Definition: A considered option that is not selected.
Use: Capture evaluation context and tradeoffs.
Avoid: Treating as an implied decision.

#### Rationale

Definition: The reason a decision or requirement exists.
Use: Explaining the why behind choices.
Avoid: Restating the decision itself.

#### Tradeoff

Definition: A deliberate balance between competing goals.
Use: When sacrificing one dimension for another.
Avoid: Hidden compromises.

#### Question

Definition: An unresolved item that blocks clarity.
Use: Tracking what must be answered.
Avoid: Rhetorical questions.

#### Example

Definition: A concrete instance that illustrates a statement.
Use: Making abstract points easier to apply.
Avoid: Adding new requirements via examples.

### Goals and scope

#### Goal

Definition: A desired outcome the docs support.
Use: Direction and intended impact; keep explicit and separate from Non-Goals.
Avoid: Detailed requirements.

#### Success Criterion

Definition: A condition that indicates a goal is met.
Use: Exit criteria or measurable outcomes.
Avoid: Vague aspirations.

#### Non-Goal

Definition: An explicit boundary of what is not intended.
Use: Preventing scope creep and misinterpretation; keep explicit and separate from Goals.
Avoid: Vague exclusions.

#### Scope

Definition: The explicit boundaries of what is in scope.
Use: Clarify included areas, teams, or surfaces.
Avoid: Unstated assumptions.

#### Out-of-Scope

Definition: Areas intentionally excluded from the current work.
Use: Preventing misalignment across teams.
Avoid: Long lists without impact.

#### Requirement

Definition: A must-have behavior or constraint.
Use: Mandatory properties or behaviors.
Avoid: Optional preferences.

#### Acceptance Criterion

Definition: A testable statement used to accept a requirement.
Use: QA, validation, or sign-off checks.
Avoid: High-level goals.

#### Constraint

Definition: A limiting condition that must be respected.
Use: Fixed boundaries like budget, time, or platform.
Avoid: Goals phrased as constraints.

#### Quality Attribute

Definition: A non-functional property such as performance, reliability, or accessibility.
Use: Cross-cutting system qualities.
Avoid: Feature behaviors.

#### Dependency

Definition: An external requirement or upstream input.
Use: External services, teams, or data sources.
Avoid: Internal steps that are not dependencies.

#### Risk

Definition: A potential negative outcome and its trigger.
Use: Uncertainty or known hazards.
Avoid: Generic concerns without triggers.

#### Mitigation

Definition: An action or control that reduces a risk.
Use: Concrete steps tied to a specific risk.
Avoid: Vague intentions.

#### Issue

Definition: A known problem or blocker that needs resolution.
Use: Track active impediments.
Avoid: Future risks without evidence.

### Business and market

#### Business Objective

Definition: A business outcome tied to strategy or ROI.
Use: Direction for prioritization and scope.
Avoid: Implementation details.

#### Business Case

Definition: The justification for why this work matters.
Use: Benefits, costs, and tradeoffs driving the effort.
Avoid: Product requirements.

#### Value Proposition

Definition: The promise of value delivered to customers or stakeholders.
Use: Clarify why users should care.
Avoid: Feature lists without benefit framing.

#### Benefit

Definition: A positive outcome delivered by the project.
Use: Impact statements and expected gains.
Avoid: Features without outcomes.

#### Cost

Definition: A resource or tradeoff required to deliver the work.
Use: Budget, time, or opportunity costs.
Avoid: Estimates without basis.

#### Opportunity

Definition: A potential gain or gap worth addressing.
Use: Market gaps or unmet needs.
Avoid: Unscoped ideas.

#### Competitive Insight

Definition: A relevant observation about competitors or alternatives.
Use: Differentiation and positioning.
Avoid: Unverified claims.

#### Market Context

Definition: Market conditions or trends affecting decisions.
Use: Positioning, timing, and risk.
Avoid: Irrelevant industry trivia.

### People and users

#### Audience

Definition: The intended readers or consumers of the doc or feature.
Use: Tailor tone and detail.
Avoid: Broad, vague targets.

#### Stakeholder

Definition: A person or group with decision power or impact.
Use: Ownership, approval, and alignment.
Avoid: Listing everyone involved.

#### Persona

Definition: A representative user archetype.
Use: Design decisions and empathy.
Avoid: Real customer names.

#### Customer Segment

Definition: A defined group of customers with shared traits.
Use: Targeting and prioritization.
Avoid: Overlapping segments.

#### User Need

Definition: The job, task, or outcome users seek.
Use: Feature justification and prioritization.
Avoid: Solutions phrased as needs.

#### Problem Statement

Definition: A clear articulation of the user or business problem.
Use: Alignment and scope.
Avoid: Proposed solutions.

#### Pain Point

Definition: A specific frustration or obstacle users face.
Use: UX prioritization and research prompts.
Avoid: General dissatisfaction without evidence.

#### Job To Be Done

Definition: The underlying job users hire the product to perform.
Use: Frame needs in outcome terms.
Avoid: Features or UI elements.

#### Use Case

Definition: A concrete situation where the product is used.
Use: Scope feature behavior and scenarios.
Avoid: Generic use without context.

#### User Story

Definition: A user-centered statement of intent and value.
Use: Capture user goals and context.
Avoid: Technical tasks.

#### Scenario

Definition: A narrative sequence showing how a user interacts.
Use: Validate flows and edge cases.
Avoid: Detailed UI documentation.

#### Journey Stage

Definition: A phase in the end-to-end user journey.
Use: Organize research and experience gaps.
Avoid: Product-only steps.

#### Workflow

Definition: The ordered set of steps to achieve an outcome.
Use: Process mapping and system behavior.
Avoid: High-level goals without steps.

#### Edge Case

Definition: An uncommon condition that affects behavior.
Use: Guardrails and validation.
Avoid: Core flows.

### Research and evidence

#### Hypothesis

Definition: A testable claim about behavior or outcomes.
Use: Experiments and research approaches.
Avoid: Assumptions without a test.

#### Research Question

Definition: A specific question guiding research.
Use: Define study focus and scope.
Avoid: Broad topics without a focus.

#### Method

Definition: The approach used to gather evidence.
Use: Interviews, surveys, analytics, or tests.
Avoid: Unclear methodology.

#### Experiment

Definition: A planned test designed to validate a hypothesis.
Use: Pilots, A/B tests, prototypes, or controlled trials.
Avoid: General research activities without a hypothesis.

#### Observation

Definition: A direct note from research or data.
Use: Raw inputs before interpretation.
Avoid: Conclusions.

#### Finding

Definition: A synthesized result from observations.
Use: Summaries of evidence.
Avoid: Hypotheses.

#### Insight

Definition: An interpretation that explains why a finding matters.
Use: Guide decisions and priorities.
Avoid: Unsubstantiated opinions.

#### Recommendation

Definition: A proposed action derived from evidence or insight.
Use: Next steps and prioritization.
Avoid: Undeclared decisions.

#### Evidence

Definition: A source or artifact supporting a claim.
Use: Links to data, research, or decisions.
Avoid: Opinions without backing.

#### Benchmark

Definition: A comparison point from a peer or standard.
Use: Evaluate relative performance or quality.
Avoid: Irrelevant comparisons.

#### Baseline

Definition: The current measured state before change.
Use: Evaluate improvement.
Avoid: Estimates without measurement.

#### Metric

Definition: A quantifiable measure of performance.
Use: KPIs, success measures, or health indicators.
Avoid: Qualitative goals.

### Planning and delivery

#### Feature

Definition: A distinct capability delivered to users.
Use: Outline high-level product behavior.
Avoid: Implementation details.

#### Milestone

Definition: A major checkpoint in delivery sequencing.
Use: Roadmap and progress tracking.
Avoid: Day-to-day tasks.

#### Sequencing

Definition: The ordering of work.
Use: Planning and coordination.
Avoid: Unowned dates.

#### Task

Definition: A unit of work with a clear outcome.
Use: Execution planning.
Avoid: Vague activities.

#### Deliverable

Definition: A tangible output produced by the work.
Use: Alignment on what will be produced.
Avoid: Ongoing processes.

#### Owner

Definition: The accountable person or group.
Use: Responsibility and follow-through.
Avoid: Multiple owners per item.

#### Priority

Definition: The relative importance of an item.
Use: Ordering work and decisions.
Avoid: Unclear scale or criteria.

#### Status

Definition: The current state of an item.
Use: Progress tracking.
Avoid: Ambiguous states.
