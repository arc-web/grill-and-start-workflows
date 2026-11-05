#!/usr/bin/env bash
# Prompt cue for grill-and-start-workflows. UserPromptSubmit sends JSON on stdin.
# Not installed by this skill. It only prints a suggestion and always exits 0.
set -uo pipefail
INPUT="$(cat 2>/dev/null || true)"
if printf '%s' "$INPUT" | grep -iqE 'grill me and (run|start|execute)|what decisions do you need|(get|bring) (me|this|it) to the key decisions|turn (this|these|it) into workflows|decide and (run|execute)'; then
  echo "[skill-cue] This looks like a request for decisions that start work. The skill grill-and-start-workflows gathers facts first, then asks only what changes which work runs. For a plain stress-test, grilling fits."
fi
exit 0
