---
name: grill-and-start-workflows
description: 'Use when the user wants an interview that ends in running work: "grill me and run it", "get me to the key decisions", "what decisions do you need from me", "turn this into workflows", or "decide and execute". Without it, a grilling session leaves small answers and nothing running, and work gets routed from memory to a skill that may not fit or may not be on the plan. It reads existing evidence and the live Composure catalog first, asks only the decisions that change which work runs, records them on GitHub, then starts the matching workflow. A plain "grill me" on a plan with no work to start stays with grilling.'
argument-hint: "[project or goal, or several]"
metadata:
  origin: custom, built with /composure:skill-builder (user process steps). The interview method is adapted from mattpocock/skills skills/productivity/grilling (MIT, see LICENSE).
---

# Grill And Start Workflows

## Outcome

The user makes the few decisions only they can make, and each answer starts named work. The session ends with a decision record on GitHub and workflows running or precisely held, not a list of answers.

## Use when

- The user wants decisions that lead straight to execution, for one project or several.
- Work is waiting on a choice, and the skill that should run next is not yet settled.

## Do not use when

- A plan only needs stress-testing and nothing should start. Use `grilling`.
- The decision and the skill are already settled. Run that skill.
- One framed question is all that is open. Ask it directly.

## Required context

- Installed Composure plugin. Without it, step 2 sends every item to the skill or person that owns it.
- GitHub access, for the decision record.

## Progress tracking

Where the host has task tools, create one task per step, mark it `in_progress` when you start it and `completed` when its deliverable exists.

## Workflow

Load each step when you reach it.

| # | File | Spine | Contains |
|---|------|-------|----------|
| 1 | `references/steps/01-gather-facts-before-asking.md` | always | The six-row consume-before-ask table mapping each question to its source, and which facts step 2 waits for |
| 2 | `references/steps/02-map-work-to-composure-skills.md` | always | The `render-about.mjs --plan` and `composure-fetch` commands, and the work map columns: work item, next skill, tier, depends on, open decision |
| 3 | `references/steps/03-grill-decisions-that-change-work.md` | decisions-open | The four-part decision test, the design tree and frontier round rules, and the card: question, recommendation, what runs for each choice |
| 4 | `references/steps/04-record-decisions-and-start-work.md` | always | The four authorities that permit a start, the decision record fields, the branch and pull request route for skill output, and the started, held and failed evidence rules |

Spine values: `always` runs every session; `decisions-open` runs only when the work map has an open decision, and whether to start an item counts as one.

**Write step:** step 4. Steps 1 to 3 only read and ask.

## Safety gates

- [READ ONLY] Steps 1 and 2 read project documents, task history, repository state and the catalog.
- [REQUIRES APPROVAL] Starting work needs one of the authorities in step 4. Purchases, messages to people outside the agents, showing a credential, and high tier merges need the person your approval rules name, even when the workflow around them is approved.
- [DESTRUCTIVE] A permanent delete of an account, login, vault record, file or data with no copy is never part of a start. Ask about it as its own question, and if the user approves, carry it out through that system's normal procedure.

## Done when

- Every decision is answered, or the exact blocked item and missing answer are stated.
- The decision record is in a GitHub issue or pull request and was read back.
- Every work item shows started, held or failed in the decision record, with its evidence or reason.

## Related

- [`grilling`](https://github.com/mattpocock/skills/blob/main/skills/productivity/grilling/SKILL.md): the interview method this adapts.
- `/composure:pursue`: multi-stage code goals.
