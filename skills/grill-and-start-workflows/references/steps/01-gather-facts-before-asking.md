# Step 1: Gather Facts Before Asking

Collect everything a tool can answer, so the interview holds only what the user alone can decide.

## Skip conditions

Skip a row below when the user's request already states that fact and names where it came from.

## Instructions

1. **Name the work.** Take the projects or goals from the request. If none is named, read the user's open tasks and open pull requests and use those.

2. **Answer from sources, not the user.** Dispatch a subagent with a fresh context window when a search is large. Step 2 waits only for facts that choose a skill or owner. Other searches can finish during step 3.

| Question you might ask | Where the answer lives |
|---|---|
| Which repository or owner? | Project documents, git remote |
| What is already done or in progress? | Task history, open pull requests, recent commits |
| What was already decided? | Decision records, task comments, project documents |
| How does the user usually choose? | Earlier decisions and standing rules in project documents, such as `CLAUDE.md` or `AGENTS.md` |
| Which skills can run, on which plan? | Plan from `composure-capability.mjs read plan`; skill list from step 2 |
| What does the code look like? | Code graph, repository files, `/composure:audit` if a score is needed |

3. **Keep only real questions.** What remains should concern intent, priority between projects, money, risk or authority. Reuse an earlier answer when its scope and evidence still apply.

## Deliverable

A fact list held in the session, where each line names its source. Mark anything unverified as unverified.

**Next:** `references/steps/02-map-work-to-composure-skills.md`
