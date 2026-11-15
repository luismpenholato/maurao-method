# Maurao Method

This repository defines a portable, specification-driven engineering method for AI coding agents.

## Repository contract

- Read the relevant skill before executing a workflow.
- Start with `technology-discovery` when the project stack, runtime, or validation commands are unknown.
- Classify work as greenfield, brownfield, or hybrid before choosing a workflow.
- Select rigor L0–L3 from `docs/workflow.md` based on ambiguity, blast radius, and risk.
- Keep the core technology-agnostic; put stack-specific behavior in `technology-packs/`.
- Treat `templates/` as normative starting points, not mandatory ceremony for trivial changes.
- Use `.maurao/` as the durable artifact root when working in a host project; follow `docs/artifact-contract.md`.
- Every implementation must have an explicit verification outcome.
- Never claim a command, test, review, or deployment was performed unless it was actually performed.
- Preserve user changes and do not create commits unless explicitly requested.

## Skill discovery

The canonical skills live under `skills/`. Use the smallest composition that covers the task:

- `skills/core/` — reasoning and lifecycle skills.
- `skills/practices/` — testing, observability, review, and delivery practices.
- `skills/workflows/` — end-to-end work modes.
- `technology-packs/` — Node.js, .NET, and Python guidance.
- `commands/` — tool-independent command entry points.
- `.maurao/` — host-project configuration and durable engineering artifacts.

Tool-specific entry points may point here, but must not duplicate the method.

