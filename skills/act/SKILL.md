---
name: act
description: >-
  Run GitHub Actions workflows locally using Docker via the `act` CLI.
  Activate when testing CI/CD workflows, debugging GitHub Actions, simulating push/pull_request events,
  or listing jobs defined in .github/workflows.
---

# GitHub Actions Local Runner (act) Skill

Guide and quick reference for running and debugging GitHub Actions workflows locally using `act`.

## Requirements
- Docker daemon running (`systemctl is-active docker`).
- A repository containing `.github/workflows/*.yml`.

---

## Core Commands & Recipes

### 1. List Available Workflows and Jobs
Inspect what workflows and jobs are discovered without running them:
```bash
act -l
```

### 2. Dry Run (Simulate execution)
Validate YAML syntax and action resolution without launching containers:
```bash
act -n
```

### 3. Run Specific Events
```bash
# Simulate a pull_request event (default is push)
act pull_request

# Simulate a push event
act push
```

### 4. Run a Specific Job
Avoid running the entire pipeline when you only want to test one job (e.g., `lint` or `test`):
```bash
act -j <job_id>
# Example:
act -j ci
```

### 5. Passing Secrets and Environment Variables
```bash
# Pass individual secret
act -s GITHUB_TOKEN=ghp_xxx -s DATABASE_URL=postgres://...

# Pass secrets file (.secrets)
act --secret-file .secrets

# Pass environment variables file (.env)
act --env-file .env
```

### 6. Managing Docker Runner Images
`act` uses container images to emulate GitHub runners (`ubuntu-latest`).
- **Micro / Medium (Default)**: Lightweight Node/Debian image.
- **Large (Full runner)**: Emulates GitHub's exact runner image.
```bash
# Use medium image explicitly
act -P ubuntu-latest=catthehacker/ubuntu:act-latest
```

### 7. Reusing Containers for Speed
Keep container state across steps to speed up repetitive debugging:
```bash
act --reuse
```
