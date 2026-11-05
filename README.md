# grill-and-start-workflows

A grilling interview that ends in running work.

It gathers the facts itself, asks only the decisions that change which work runs, records them on GitHub, then starts the matching workflow. If you have the [Composure](https://github.com/hrconsultnj/claude-plugins) plugin, it picks from Composure's live skill catalog and routing map, so nothing goes stale. Without Composure, it hands each item to the skill or person that owns it.

## Status

New. It passed several independent reviews of the written steps, but it has not yet run on a real project. Expect rough edges.

## Install

Copy `skills/grill-and-start-workflows` into your agent's skills folder, such as `.claude/skills/` in a project. `scripts/skill-cue-grill-and-start-workflows.sh` is an optional `UserPromptSubmit` hook that suggests the skill. It is not installed for you.

## How a session goes

1. **Gather facts.** Read project documents, task history and repository state. Nothing a tool can answer becomes a question.
2. **Map the work.** One row per work item: next skill, plan tier, dependencies, open decision.
3. **Grill.** Design tree and frontier rounds, limited to decisions that change which skill runs, the scope, the order, money, risk or authority. Each question shows what runs for each choice.
4. **Record and start.** Save the decision with your exact words, start only what you authorized, and report each item as started, held or failed, with evidence.

Purchases, outside messages, showing credentials and merges your rules reserve for a person still wait for that person. Permanent deletes are always their own question.

## Credit

The interview method is adapted from [Matt Pocock's `grilling` skill](https://github.com/mattpocock/skills/blob/main/skills/productivity/grilling/SKILL.md), under the MIT License. His notice is kept in [`LICENSE`](LICENSE). This project is not affiliated with him or endorsed by him. Thank you, Matt.

The skill structure was produced with Composure's `/composure:skill-builder`. No Composure content is included. The skill reads it at run time from your own install.
