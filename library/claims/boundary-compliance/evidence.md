# Evidence Capture

Capture evidence for this claim type in the shared evidence shape: claim,
context or method, observations and raw artifacts, verdict.

## Claim

- State the concrete claim using the rules in `claim.md`.
- Name the specific scope, exclusions, permissions, and second-order-fix rule
  being asserted.
- Include any declared exception or approved boundary change.

## Methodology References

- Record the claim type folder path.
- Link the relevant `plan.md` scope and compliance-control sections.
- Link `status.md` for operating scope and permissions.
- Link receipts and audit outputs that support the compliance posture.

## Method Or Context

- Explain how the run checked or maintained boundary compliance.
- Record whether compliance was enforced proactively, audited at the end, or
  both.
- Note any place where the boundary was ambiguous and had to be clarified.

## Observations

- Record the touched files, sections, or labels relevant to the claim.
- Record explicit exclusions and any untouched areas that might otherwise be
  assumed to have been reviewed.
- Record any out-of-scope mechanical touches and why they were allowed.
- Record any read/write limitation that constrained the pass.

## Raw Artifacts

- Reference `status.md` and `plan.md` boundary sections.
- Reference receipts that show touched surfaces and drift usage.
- Reference audit notes or report sections that summarize compliance.

## Verdict

- Use the verdict meanings defined below.
- Base the verdict on recorded boundaries versus actual reads, writes, and
  second-order touches.
- Note the limiting factor when a boundary was ambiguous or only partially
  audited.

## Open Questions Or Follow-Ups

- Record unresolved ambiguity about scope or permissions.
- Record any suspected overreach that requires owner confirmation.
- Include follow-up owners when a boundary exception needs ratification.

## Verdict Guidance

Define what each allowed verdict means for this claim type.

### supported

- Use when: the pass boundaries were explicit and the recorded reads, writes,
  and second-order touches stayed within them.
- Not enough when: the pass likely stayed in bounds but the evidence does not
  show what was actually touched.

### mixed

- Use when: most activity is clearly compliant but one boundary area is weak,
  such as an ambiguously justified second-order touch.
- Not enough when: the core scope itself was unclear.

### incomplete

- Use when: the run probably intended to stay within bounds but the evidence is
  not sufficient to show compliance.
- Not enough when: a clear boundary violation is already known.

### open

- Use when: compliance is still being assessed or an exception is awaiting
  confirmation.
- Not enough when: the run has already finalized work despite unresolved
  boundary conflict.

### failed

- Use when: the run exceeded declared scope, permissions, or approved drift
  allowance without explicit authorization.
- Not enough when: only a clerical link or note is missing while the actual
  boundary behavior is still supported.

## Evidence Thread Rules

Create a new evidence item when:

- a separate scoped slice needs its own compliance posture,
- a boundary exception becomes a distinct issue,
- one thread would otherwise mix ordinary compliance with a suspected
  violation.

### Enrich An Existing Evidence Item When

- more touched surfaces or receipts are added for the same scope,
- audit results refine the compliance posture,
- the same boundary claim is updated with clearer justification.

### Do Not Mix

- compliance with scope and permissions versus approval authority,
- propagation completeness versus allowed out-of-scope touching,
- separate scopes that need independent compliance judgments.

### Close Out When

- the actual run surface is inspectable against the declared boundary,
- any exception or ambiguity is recorded explicitly,
- the verdict reflects the final compliance posture for the run.
