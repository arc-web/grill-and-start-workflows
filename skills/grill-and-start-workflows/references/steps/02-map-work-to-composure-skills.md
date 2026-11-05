# Step 2: Map Work To Composure Skills

Decide what would run for each work item, using the catalog and routing map as they are today, not from memory.

## Skip conditions

If Composure is not installed, skip instructions 1 to 4 and send every item to the skill or person that owns it. If it is installed, do the same for any single item that is not code, product or design work. Record each owner in the work map.

## Instructions

1. **Read the plan.** Run `composure-capability.mjs read plan` from the plugin's `bin/usage/` folder. Check the path on this host first.

2. **Read the live catalog.** Run `node <composure plugin>/skills/about/render-about.mjs --plan <plan>`. It lists only skills that plan includes. Never hand-copy this list into a skill or a record, because it changes with each release.

3. **Read the routing map.** Run `composure-fetch.mjs --full skill composure _shared contracts/skill-handoffs` from `~/.composure/bin/`. Use its entry table to pick the starting skill, and its preconditions table for what that skill needs. If the fetch fails, say so and do not rebuild the table from memory.

4. **Choose the size of each start.**
   - One feature with a plan still to write: `/composure:blueprint`.
   - A code goal that needs several stages and should keep going until accepted: `/composure:pursue`. It starts only when invoked.
   - A narrow job the entry table names directly: that skill.

5. **Build the work map.**

| Work item | Next skill or owner | Plan tier | Depends on | Open decision |
|---|---|---|---|---|

A row whose skill is above the plan keeps the item and names the nearest included skill, or holds it with the tier as the reason.

## Deliverable

The work map in the session. An empty "Open decision" column means step 3 has nothing to ask for that row. Enter "whether to start" as the open decision unless the user's request names that exact work or a standing instruction covers it.

**Next:** `references/steps/03-grill-decisions-that-change-work.md`
