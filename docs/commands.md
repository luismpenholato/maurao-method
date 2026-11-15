# Maurao commands

These are tool-independent commands. A tool adapter may expose them as slash commands, chat prompts, or task templates, but the semantics remain the same.

| Command | Purpose | Primary mode |
|---|---|---|
| `maurao discover` | Understand the problem, users, constraints, and existing context | Greenfield / Brownfield |
| `maurao map` | Map an existing codebase, system, contracts, and risks | Brownfield |
| `maurao inspect` | Detect technology evidence and write `.maurao/technology-inventory.md` | Any |
| `maurao specify` | Create or refine a testable change specification | Any |
| `maurao design` | Produce architecture, decisions, and trade-offs | L2 / L3 |
| `maurao plan` | Decompose approved work into ordered, verifiable tasks | Any non-trivial change |
| `maurao build` | Implement the approved plan using the selected technology pack | Any |
| `maurao test` | Derive and execute the relevant test strategy | Any |
| `maurao debug` | Investigate a failure using hypotheses and evidence | Bug fix / incident |
| `maurao spike` | Answer a bounded technical question through an experiment | Any |
| `maurao verify` | Map acceptance criteria to executed evidence | Any |
| `maurao review` | Perform an independent change review | Any reviewable change |
| `maurao pr` | Prepare a focused pull request | Delivery |
| `maurao status` | Report artifacts, gate, risks, and remaining work | Any |

## Command contract

Every command must state:

- inputs it read;
- artifacts it created or changed;
- decisions it made;
- validations it executed;
- blockers and assumptions;
- the next gate.

