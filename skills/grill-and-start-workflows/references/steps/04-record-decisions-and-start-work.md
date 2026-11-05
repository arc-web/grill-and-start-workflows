# Step 4: Record Decisions And Start Work

Save what was decided, then start what it unlocked. Finishing the interview is not the end of this skill.

## Skip conditions

Hold, and do not start, an item whose decision is still open, whose dependency has not finished, or that has no authority from instruction 3. Continue with the rest.

## Instructions

1. **Write the decision record** to the existing GitHub issue or pull request that owns the work. If none exists, open an issue in the owning repository. If the work is tracked in another system, link the record from that task, or state that the link is missing. Read it back before moving on. If the record cannot be written, hold every start and report the failed write.

| Field | Content |
|---|---|
| Decision | What was chosen, with the user's exact words |
| Defaults taken | Details settled without asking, so the user can overrule them |
| Evidence | The facts it rests on, with sources |
| Work started | The skills or owners this decision starts |
| Reopen if | What would change this decision |

2. **Check the destination before each start.** Several Composure skills write to `tasks-plans/` or `.composure/` in the project checkout. Work on a branch of the project's repository, publish the output through a pull request under the repository's review rules, and read it back. If a skill's output cannot reach GitHub, hold that start and say which write is affected.

3. **Start in dependency order.** Each start needs one of these authorities, within its scope: the user's answer in step 3, the user's request naming that exact work (a trigger phrase alone names nothing), or an existing standing instruction. A default from step 3 is not an authority. `/composure:pursue` needs an answer or request that names the goal. Invoke each skill with the decision record as its input, so it does not ask those questions again, and do not ask again for what was already authorized.

4. **These still wait for the person your approval rules name:** purchases, plans and payment pages, messages to people outside the agents, showing a credential, and merges that those rules hold for a person. Prepare everything up to that point and ask once for all of them together. Ask separately about a permanent delete with no copy, because it is never part of a start. If the user approves, carry it out through that system's normal procedure, not as a start from this skill.

5. **Report each item as one of three states.**
   - **Started:** the skill was invoked and its first step completed without error. Give a link or run ID someone else can check, not a local path.
   - **Held:** name the reason, the exact decision or dependency, and the next actor.
   - **Failed:** the skill stopped with an error, at its start or later. Quote the error, name the next action, and do not retry unchanged.
   A recommendation, a plan alone, or a saved record does not count as started.

6. **Update the decision record** with each item's state and read it back. When an item changes state later in the session, update the record again.

## Deliverable

The GitHub link to the decision record, and the work map with every row marked started, held or failed.

## Output format

```
Decided: <decision> (<record link>)
Defaults taken: <details, or none>
Started: <item>: <skill>, evidence: <run, task or file>
Held: <item>: <reason>, next: <actor and action>
Failed: <item>: <error>, next: <action>
Your next decision: <one line, or none>
```
