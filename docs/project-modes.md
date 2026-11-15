# Project modes

## Greenfield

Use when the product or subsystem does not have a reliable implementation baseline.

1. Define the problem, users, value, and non-goals.
2. Identify the smallest useful product slice.
3. Define domain concepts, user journeys, and acceptance criteria.
4. Choose architecture and technology only after constraints are known.
5. Create the first vertical slice with tests and operational signals.
6. Validate with real feedback before expanding scope.

Do not create a large platform architecture before the first useful slice proves the important assumptions.

## Brownfield

Use when an existing product, codebase, API, database, or operational system must be changed.

1. Map the current system before proposing a target design.
2. Identify ownership, boundaries, dependencies, data flows, and undocumented behavior.
3. Write invariants: behavior that MUST remain unchanged.
4. Define the delta between current and desired state.
5. Choose a migration and rollback strategy.
6. Implement in reversible increments.
7. Verify both the new behavior and compatibility with the existing behavior.

Brownfield work must never treat the specification as the only source of truth. The running system, tests, telemetry, contracts, and user behavior are evidence too.

## Hybrid

Use when a new product is being introduced into an existing organization or platform. Apply greenfield product framing and brownfield integration mapping together.

