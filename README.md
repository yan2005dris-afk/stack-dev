# 🛠️ Stack Dev - Entorno de Desarrollo, Dotfiles & Tooling

Entorno de desarrollo moderno, modular y reproducible para Linux, optimizado para arquitectura de software full-stack (NestJS, TypeScript, Angular, PostgreSQL, Docker, Neovim/LazyVim y Asistentes de IA).

---

## 🐧 Sistemas Operativos Recomendados (Top Picks)

- **[Ryoku OS](https://github.com/gentleman-programming)** (Basado en Arch Linux): Distribución rolling release altamente optimizada, con acceso completo a AUR, paquetería de vanguardia y entorno configurado para desarrollo de software de máximo rendimiento.
- **[Fedora Workstation / Silverblue](https://fedoraproject.org/)**: El estándar de estabilidad moderna, kernels actualizados de primera línea, excelente integración de Wayland y soporte empresarial nativo para contenedores (Podman/Docker).

---

## 💻 Entornos de Edición & IDEs

### 1. IDEs Gráficos
- **[Antigravity IDE](https://antigravity.google/)**: Entorno de desarrollo asistido por IA de próxima generación con integración nativa multi-agente, depuración contextual y ejecución segura de herramientas.
- **[Zed](https://zed.dev/)**: Editor de código de alto rendimiento escrito en Rust, acelerado por GPU, diseñado para colaboración en tiempo real y flujo ultrarrápido.

### 2. Editor de Terminal (TUI)
- **[Neovim](https://neovim.io/) + [LazyVim](https://www.lazyvim.org/)**: Configuración modular y extensible basada en Lua con gestión declarativa de plugins, LSP avanzado (`blink.cmp`), formateadores (`conform.nvim`), diagnósticos (`trouble.nvim`) y explorador modal (`oil.nvim`).

---

## 🖥️ Aplicaciones de Escritorio & GUI

- **[DbGate](https://dbgate.org/)**: Cliente gráfico ágil y ligero para SQL y NoSQL (PostgreSQL, MySQL, Redis, MongoDB, SQLite).
- **[Bruno](https://www.usebruno.com/)**: Cliente de APIs offline-first, seguro y Git-friendly (guarda colecciones en archivos planos).
- **[Obsidian](https://obsidian.md/)**: Entorno de gestión de conocimiento personal, documentación técnica y notas en Markdown con enlaces bidireccionales.
- **[Zen Browser](https://zen-browser.app/)**: Navegador web moderno basado en Firefox, enfocado en privacidad, rendimiento, pestañas verticales y espacios de trabajo.
- **[Ghostty](https://ghostty.org/) / [Heerd](https://github.com/herdrdev/herdr)**: Emulador de terminal acelerado por GPU con renderizado tipográfico de alta fidelidad.

---

## 🤖 Ecosistema de Inteligencia Artificial & Ejemplos de Uso

### 1. Agentes de Código & CLIs Autónomos
- **[Antigravity CLI (`agy`)](https://github.com/google/antigravity)**: Asistente y orquestador agentic avanzado de Google DeepMind.
  ```bash
  agy "Analiza la arquitectura de rutas y genera el diagrama ER con tbls"
  ```
- **[Aider](https://github.com/paul-gauthier/aider)**: Pair-programming por terminal con commits atómicos automáticos.
  ```bash
  aider src/app.module.ts src/billing/billing.service.ts
  ```
- **[OpenCode](https://github.com/NickvanDyke/opencode.nvim)** & **[Pi Agent](https://github.com/mizchi/pi)**: Asistentes interactivos de código en consola.

### 2. Extracción de Contexto, AST & Reducción de Tokens
- **[RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk)**: Filtra y comprime la salida de comandos para no saturar la ventana de contexto.
  ```bash
  rtk git log -n 50 | agy "Genera el changelog"
  ```
- **[Repomix](https://github.com/yamadashy/repomix)**: Empaqueta todo el repositorio en un único archivo Markdown limpio para LLMs.
  ```bash
  repomix --include "src/**/*.ts" --output repo-context.md
  ```
- **[Files-to-prompt](https://github.com/simonw/files-to-prompt)**: Concatena archivos específicos respetando `.gitignore`.
  ```bash
  files-to-prompt src/modules/auth/ | agy "Revisa posibles brechas de seguridad"
  ```
- **[ast-grep (`sg`)](https://github.com/ast-grep/ast-grep)**: Búsqueda estructural por Árbol de Sintaxis (AST) sin falsos positivos de regex.
  ```bash
  sg -p '@Injectable() class $CLASS { $$$ }' --lang typescript
  ```
- **[Tokei](https://github.com/XAMPPRocky/tokei)**: Conteo instantáneo de líneas de código reales y complejidad.
  ```bash
  tokei src/
  ```

### 3. Protocolos de Contexto del Modelo (MCP Servers)
- **[Engram MCP](https://github.com/gentleman-programming/engram)**: Memoria semántica y grafo de conocimiento entre sesiones.
- **[Context7 MCP](https://github.com/gentleman-programming/context7)**: Ingesta profunda de contexto documental para LLMs.
- **[CodeGraph MCP](https://github.com/gentleman-programming/gentle-ai)**: Navegación estructural del repositorio (call trees y blast radius).
- **[Codebase Memory MCP](https://github.com/codebase-memory/codebase-memory-mcp)**: Memoria estructurada de código y tracing.

### 4. Skills Personalizadas para Agentes de Código
- **`act`**: Ejecución local de GitHub Actions con Docker (`act -j build`).
- **`httpie`**: Peticiones HTTP claras (`http GET localhost:3000/api/health Authorization:"Bearer $TOKEN"`).
- **`dev-toolbelt`**: Recetas de análisis estático (`hadolint Dockerfile`, `shellcheck deploy.sh`, `sqlfluff lint query.sql`).
- **`antigravity-guide` & `agy-customizations`**: Guía y referencias de extensibilidad para Antigravity CLI.

---

## 🛠️ Catálogo de Herramientas CLI & Ejemplos

### 1. Base de Datos y Arquitectura
- **[pgcli](https://www.pgcli.com/)**: Terminal interactiva con autocompletado de tablas y columnas.
  ```bash
  pgcli postgresql://usuario:password@localhost:5432/jasrapo_db
  ```
- **[tbls](https://github.com/k1LoW/tbls)**: Documentación y diagramas ER generados en Markdown.
  ```bash
  tbls doc postgresql://postgres:pass@localhost:5432/jasrapo_db ./docs/db
  ```
- **[Atlas](https://atlasgo.io/)**: Linter y control de seguridad en migraciones.
  ```bash
  atlas schema inspect -u "postgres://usuario:pass@localhost:5432/jasrapo_db"
  ```

### 2. Contenedores y Optimización
- **[Lazydocker](https://github.com/jesseduffield/lazydocker)**: TUI interactiva para contenedores.
  ```bash
  lazydocker
  ```
- **[Dive](https://github.com/wagoodman/dive)**: Inspección de peso de capas de una imagen Docker.
  ```bash
  dive jasrapo-backend:latest
  ```
- **[Hadolint](https://github.com/hadolint/hadolint)**: Linter de buenas prácticas en Dockerfiles.
  ```bash
  hadolint Dockerfile
  ```

### 3. Calidad de Código, Linting y Seguridad
- **[Trivy](https://trivy.dev/)**: Escaneo de vulnerabilidades (CVEs).
  ```bash
  trivy image jasrapo-backend:latest
  trivy fs --scanners vuln,secret .
  ```
- **[ShellCheck](https://www.shellcheck.net/)**: Linter para scripts Bash.
  ```bash
  shellcheck deploy.sh
  ```
- **[SQLFluff](https://sqlfluff.com/)**: Linter y formateador SQL para PostgreSQL.
  ```bash
  sqlfluff lint migrations/ --dialect postgres
  ```
- **[grex](https://github.com/pemistahl/grex)**: Generador de expresiones regulares desde casos de prueba.
  ```bash
  grex a@b.com test@gmail.com contacto@empresa.ec
  ```

### 4. Testing, Rendimiento y Red
- **[k6](https://k6.io/)**: Pruebas de estrés y carga.
  ```bash
  k6 run load-test.js
  ```
- **[Hyperfine](https://github.com/sharkdp/hyperfine)**: Benchmarking de comandos.
  ```bash
  hyperfine --warmup 3 'pnpm build' 'bun build ./src/main.ts'
  ```
- **[gping](https://github.com/orf/gping)**: Gráfica de latencia interactiva.
  ```bash
  gping 1.1.1.1 google.com
  ```
- **[doggo](https://doggo.mrkaran.dev/)**: Consultas DNS legibles.
  ```bash
  doggo google.com @1.1.1.1
  ```

### 5. Productividad CLI
- **[Ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep)** & **[Fd (`fd`)](https://github.com/sharkdp/fd)**:
  ```bash
  rg "OrdenTrabajoService" src/
  fd -e ts -e json
  ```
- **[Dust](https://github.com/bootandy/dust)**: Análisis visual de disco.
  ```bash
  dust -d 2
  ```
- **[Glow](https://github.com/charmbracelet/glow)**: Lectura de Markdown formateado.
  ```bash
  glow README.md
  ```
- **[Fx](https://fx.wtf/)**: Visor interactivo de JSON.
  ```bash
  curl -s https://api.github.com/repos/yan2005dris-afk/stack-dev | fx
  ```

---

## 🚀 Guía de Instalación Rápida en Arch Linux

```bash
# 1. Paquetes oficiales del sistema
sudo pacman -S \
  neovim zed docker docker-compose lazygit git-delta github-cli \
  ripgrep fd bat eza fzf jq yq zoxide \
  httpie hyperfine trivy shellcheck hadolint pgcli grex \
  dust glow bun tokei ast-grep

# 2. Paquetes desde AUR (vía yay)
yay -S \
  mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx \
  zen-browser-bin obsidian

# 3. Herramientas CLI vía pipx / npm
pipx install aider-chat
pipx install files-to-prompt
npm install -g repomix

# 4. Aplicaciones GUI (DbGate AppImage)
mkdir -p ~/.local/bin
curl -L https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.AppImage -o ~/.local/bin/dbgate
chmod +x ~/.local/bin/dbgate
```

---

## 🙏 Créditos & Proyectos de Referencia

Este entorno y flujo de trabajo toma inspiración directa de excelentes proyectos de la comunidad:

* **[Aider](https://github.com/paul-gauthier/aider)**: Pair programming impulsado por IA y mapa semántico de repositorios.
* **[Graft](https://github.com/nanonets/graft)** / **[Repomix](https://github.com/yamadashy/repomix)**: Extracción y paquetización de contexto de repositorios para LLMs.
* **[RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk)**: Herramienta de optimización y reducción de contexto para agentes CLI de IA.
* **[ast-grep](https://github.com/ast-grep/ast-grep)**: Búsqueda y reescritura de código por AST en Rust.
* **[gentle-ai](https://github.com/gentleman-programming/gentle-ai)** / **[gentleman-dots](https://github.com/gentleman-programming/gentleman.dots)**: Ecosistema de herramientas de IA, MCP servers ([Engram](https://github.com/gentleman-programming/engram), [Context7](https://github.com/gentleman-programming/context7), [CodeGraph](https://github.com/gentleman-programming/gentle-ai)) y configuración de Neovim/LazyVim de Alan Buscaglia (Gentleman Programming).
* **[Mise-en-place](https://github.com/jdx/mise)**: Gestor de entornos y toolchains de Jeff Dickey.
