# Specification standard

## Required sections

Every non-trivial change should define:

1. Context and problem.
2. Desired outcome.
3. Scope and non-goals.
4. Constraints and invariants.
5. Behavioral requirements.
6. Acceptance criteria.
7. Risks and open decisions.
8. Verification plan.

## Requirement quality

Requirements must be observable, testable, and independent of implementation details unless the implementation constraint is intentional.

Use MUST for mandatory behavior, SHOULD for a justified default, and MAY for optional behavior.

## Traceability

Use stable identifiers such as `REQ-001`, `AC-001`, and `TEST-001`. Verification should map acceptance criteria to tests, checks, inspection, or explicit human review.

