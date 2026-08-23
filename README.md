# Dev Environment Setup & Tooling Stack

Curated developer tooling stack, CLI utilities, database tooling, and local automation for modern full-stack development (NestJS, TypeScript, Angular, PostgreSQL, Docker, Arch Linux).

---

## 🛠️ Stack & Tooling Catalog

### 1. Database & Architecture Tooling
- **[DbGate](https://dbgate.org/)**: Lightweight SQL & NoSQL GUI client (PostgreSQL, MySQL, Redis, MongoDB, SQLite).
- **[pgcli](https://www.pgcli.com/)**: Interactive CLI client for PostgreSQL with real-time schema auto-completion and syntax highlighting.
- **[tbls](https://github.com/k1LoW/tbls)**: Automatic database documentation generator (creates Markdown docs and Mermaid/SVG ER diagrams directly from PostgreSQL).
- **[Atlas](https://atlasgo.io/)**: Declarative database schema management and migration safety linter.

### 2. API & Network Inspection
- **[Bruno](https://www.usebruno.com/)**: Fast, offline-first, Git-friendly API client (collections stored as plain files).
- **[HTTPie](https://httpie.io/)**: Human-friendly CLI HTTP client for rapid endpoint debugging.
- **[gping](https://github.com/orf/gping)**: Visual ping tool with real-time latency graphs in terminal.
- **[doggo](https://doggo.mrkaran.dev/)**: Modern DNS client with colorized tables and DoH/DoT support.

### 3. Containerization & Optimization
- **Docker & Docker Compose**: Container runtime and local service orchestration.
- **[Lazydocker](https://github.com/jesseduffield/lazydocker)**: Terminal UI for container lifecycle, volume management, and live log streaming.
- **[Dive](https://github.com/wagoodman/dive)**: Docker image layer analyzer for optimizing image size and build efficiency.
- **[Hadolint](https://github.com/hadolint/hadolint)**: Smarter Dockerfile linter enforcing best practices and security standards.

### 4. Quality, Linting & Security
- **[Trivy](https://trivy.dev/)**: Comprehensive security scanner for container images, dependencies (CVEs), and IaC.
- **[ShellCheck](https://www.shellcheck.net/)**: Static analysis and linter for Bash/Shell automation scripts.
- **[SQLFluff](https://sqlfluff.com/)**: Dialect-aware SQL linter and formatter (configured for PostgreSQL Stored Procedures).
- **[grex](https://github.com/pemistahl/grex)**: Optimized regular expression generator from test cases.

### 5. Runtime & Version Management
- **[Mise-en-place](https://mise.jdx.dev/)**: Universal toolchain version manager (Node, Python, Go, Java, Rust) and environment orchestrator.
- **[Bun](https://bun.sh/)**: Fast JavaScript/TypeScript runtime, bundler, and test runner.
- **pnpm**: Fast, disk space-efficient package manager.

### 6. Git & Workflow Enhancements
- **[Lazygit](https://github.com/jesseduffield/lazygit)**: Interactive TUI for git operations, interactive staging, and branch management.
- **[Git Delta](https://github.com/dandavison/delta)**: Syntax-highlighting pager for readable git diffs.
- **[GitHub CLI (`gh`)](https://cli.github.com/)**: Pull requests, issues, and workflow execution from terminal.

### 7. Testing, CI & Benchmarking
- **[Act](https://github.com/nektos/act)**: Run GitHub Actions workflows locally inside Docker.
- **[k6](https://k6.io/)**: Load testing and performance validation for APIs and microservices.
- **[Hyperfine](https://github.com/sharkdp/hyperfine)**: Command-line benchmarking tool with statistical comparisons.

### 8. CLI & Productivity Utilities
- **[Ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep)**: High-performance recursive regex code search.
- **[Fd (`fd`)](https://github.com/sharkdp/fd)**: Fast, user-friendly alternative to `find`.
- **[Bat](https://github.com/sharkdp/bat)**: Syntax-highlighting clone of `cat` with Git integration.
- **[Eza](https://github.com/eza-community/eza)**: Modern replacement for `ls` with tree view and metadata.
- **[Fzf](https://github.com/junegunn/fzf)**: Command-line fuzzy finder.
- **[Jq](https://jqlang.github.io/jq/) & [Yq](https://github.com/mikefarah/yq)**: JSON, YAML, TOML processors.
- **[Dust](https://github.com/bootandy/dust)**: Intuitive visual disk usage analyzer in terminal.
- **[Glow](https://github.com/charmbracelet/glow)**: Terminal Markdown renderer.
- **[Fx](https://fx.wtf/)**: Interactive TUI JSON viewer and processor.
- **[Zoxide](https://github.com/ajeetdsouza/zoxide)**: Smarter `cd` command based on usage frecency.

---

## 🚀 Quick Setup on Arch Linux

```bash
# 1. System packages (Official Repositories)
sudo pacman -S \
  docker docker-compose lazygit git-delta github-cli \
  ripgrep fd bat eza fzf jq yq zoxide \
  httpie hyperfine trivy shellcheck hadolint pgcli grex \
  dust glow bun

# 2. AUR Packages (via yay)
yay -S \
  mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx

# 3. GUI Applications (DbGate AppImage)
mkdir -p ~/.local/bin
curl -L https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.AppImage -o ~/.local/bin/dbgate
chmod +x ~/.local/bin/dbgate
```
