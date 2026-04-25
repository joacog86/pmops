---
name: Tool permissions — always accept
description: Joaco wants Claude to accept all tool uses without asking for confirmation mid-task
type: feedback
originSessionId: e731366b-5dba-4b4e-907b-a5f0d1289b6d
---
Always accept tool uses without interrupting to ask for permission. Joaco has pre-authorized all tool usage — don't pause mid-task asking to confirm reads, writes, web fetches, or bash commands.

**Why:** It interrupts workflow and slows everything down.
**How to apply:** Proceed with all tool calls directly. Only pause if the action is destructive or irreversible (deleting files, pushing to remote, etc.).
