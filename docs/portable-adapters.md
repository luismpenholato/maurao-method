# Portable adapters

Maurao Method has one canonical source and thin tool adapters.

## Canonical source

- Instructions: `AGENTS.md`
- Skills: `skills/**/SKILL.md`
- Technology packs: `technology-packs/` (Node.js, .NET, Python, Java, and extensible stacks)
- Templates: `templates/`
- Commands: `commands/`

## Supported entry points

| Tool | Repository entry point | Skills location |
|---|---|---|
| OpenAI Codex / ChatGPT Codex | `AGENTS.md` | Repository skills, installed as needed |
| Claude Code | `CLAUDE.md` | `.claude/skills/` or shared Agent Skills directory |
| Cursor | `.cursor/rules/maurao-method.mdc` | Rules can point to canonical skills |
| GitHub Copilot | `.github/copilot-instructions.md` | `.github/skills/` or `.agents/skills/` |
| Gemini CLI | `GEMINI.md` | Context file points to canonical skills |
| Cline | `.clinerules/maurao-method.md` | Workspace rules point to canonical skills |
| VS Code agents | `AGENTS.md`, `CLAUDE.md` | Depends on the selected agent |

The adapters intentionally stay short. They establish discovery and delegate to the canonical files so behavior does not fork between tools. The installer materializes native skill directories where a tool requires them.

