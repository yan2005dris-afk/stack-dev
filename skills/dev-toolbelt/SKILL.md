---
name: dev-toolbelt
description: >-
  Quick reference and recipes for code quality, security, and database CLI tools:
  SQLFluff (SQL linting), ShellCheck (Bash linting), Trivy (CVE/vulnerability scanning),
  Hadolint (Dockerfile linting), K6 (performance/load testing), and Grex (Regex generation).
---

# Developer Toolbelt (Quality, Security & Performance)

## 1. SQLFluff (SQL Linter & Formatter)
Dialect-aware linter for PostgreSQL migrations, stored procedures, and queries.

```bash
# Lint SQL files
sqlfluff lint backend/prisma/migrations/**/*.sql --dialect postgres

# Auto-fix linting issues
sqlfluff fix backend/prisma/migrations/**/*.sql --dialect postgres

# Parse & validate syntax without rules
sqlfluff parse path/to/procedure.sql --dialect postgres
```

---

## 2. ShellCheck (Shell Script Linter)
Static analysis tool for sh/bash scripts.

```bash
# Check single script
shellcheck backend/scripts/docker-entrypoint.sh

# Scan all shell scripts recursively
shellcheck **/*.sh

# Select specific shell dialect
shellcheck -s bash script.sh
```

---

## 3. Trivy (Security & Vulnerability Scanner)
Comprehensive scanner for container images, lockfiles, and IaC configurations.

```bash
# Scan repository/lockfiles for known CVEs
trivy fs backend/pnpm-lock.yaml

# Scan a built Docker image
trivy image jasrapo-backend-backend:latest

# Filter only HIGH and CRITICAL vulnerabilities
trivy fs --severity HIGH,CRITICAL backend/
```

---

## 4. Hadolint (Dockerfile Linter)
Enforces Dockerfile best practices and checks inline shell instructions via ShellCheck.

```bash
# Lint Dockerfile
hadolint backend/Dockerfile
hadolint Dockerfile
```

---

## 5. k6 (Load & Performance Testing)
API performance and stress testing via JavaScript scripts.

```bash
# Run local performance test
k6 run scripts/load-test.js

# Run with virtual users and duration flags
k6 run --vus 10 --duration 30s scripts/load-test.js
```

---

## 6. Grex (Regex Generator)
Generates simplified regular expressions from sample inputs.

```bash
# Generate regex matching test strings
grex "0991234567" "0987654321" "0951122334"

# Generate case-insensitive regex
grex -i "ACTIVO" "activo" "Activo"
```
