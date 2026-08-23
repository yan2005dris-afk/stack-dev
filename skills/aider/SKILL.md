---
name: aider
description: Use Aider CLI for AI pair-programming in terminal, multi-file code editing, git-aware refactoring, and auto-generating conventional commits.
---

# Aider Pair-Programming Skill

Use `aider` to perform terminal-driven pair programming, automated multi-file code modifications, and Git-tracked autonomous refactoring.

## Core Workflows

### 1. Launch Interactive Session with Specific Files
```bash
aider path/to/file1.ts path/to/file2.ts
```

### 2. Non-Interactive One-Shot Prompt (Scripting / Pipeline Mode)
Execute a prompt directly from the shell without opening the interactive TUI:
```bash
aider --message "Refactor findOne method to use Prisma transactions" --yes-always src/orders/orders.service.ts
```

### 3. Read-Only Context (Reference without editing)
Include reference files (e.g. interfaces, schemas) that Aider should read but NOT modify:
```bash
aider --read src/common/types.ts src/billing/billing.service.ts
```

### 4. Code Linting & Test Verification Loop
Tell Aider to automatically run your test suite or linter after applying edits:
```bash
aider --test-cmd "npm test" --auto-test src/billing/billing.service.ts
```

### 5. Useful In-Session Commands
- `/add <file>`: Add a file to the active chat context for editing.
- `/read-only <file>`: Add a file as reference only.
- `/drop <file>`: Remove file from context to save tokens.
- `/undo`: Revert the last commit made by Aider.
- `/diff`: Show Git diff of changes made in the session.
- `/commit <msg>`: Create a custom Git commit.
