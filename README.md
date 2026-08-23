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

## 🤖 Ecosistema de Inteligencia Artificial (Agentes, Contexto, Optimizadores & MCP)

### 1. Agentes de Código & CLIs Autónomos
- **[Antigravity CLI (`agy`)](https://github.com/google/antigravity)**: Asistente y orquestador agentic avanzado desarrollado por Google DeepMind, con soporte multi-agente, ejecución de herramientas y contexto dinámico.
- **[OpenCode](https://github.com/NickvanDyke/opencode.nvim)**: Agente autónomo de código abierto integrado con LLMs para refactorización, generación de tests y análisis en local.
- **[Pi Agent](https://github.com/mizchi/pi)**: Agente interactivo ligero y modular para asistencia en terminal y pipelines de desarrollo.

### 2. Extracción de Contexto de Repositorios & Reducción de Tokens
- **[Graft](https://github.com/nanonets/graft)**: Herramienta CLI para transformar estructuras de repositorios y bases de código completas en contexto estructurado y digerible para LLMs y asistentes de IA.
- **[RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk)**: CLI ultrarrápido en Rust para filtrar, compactar y resumir la salida de comandos (`cargo test`, `git log`, `pytest`, linters) reduciendo el consumo de tokens entre un 60% y 90%.
- **[Repomix](https://github.com/yamadashy/repomix)** (antes Repopack): Empaqueta repositorios enteros de código en un solo archivo Markdown/XML estructurado con conteo de tokens y mapeo de dependencias para modelos de lenguaje.

### 3. Protocolos de Contexto del Modelo (MCP Servers)
- **[Engram MCP](https://github.com/gentleman-programming/engram)** (creado por Gentleman Programming / Gentle AI): Memoria semántica persistente y grafo de conocimiento histórico para sesiones de agentes.
- **[Context7 MCP](https://github.com/gentleman-programming/context7)** (creado por Gentleman Programming / Gentle AI): Ingesta y resolución profunda de contexto documental y arquitectónico para LLMs.
- **[CodeGraph MCP](https://github.com/gentleman-programming/gentle-ai)** (creado por Gentleman Programming / Gentle AI): Navegación estructural del repositorio (árbol de llamadas, impacto de dependencias y mapa de código).
- **[Codebase Memory MCP](https://github.com/codebase-memory/codebase-memory-mcp)**: Memoria estructurada de código y tracing de proyecto.

### 4. Skills Personalizadas para Agentes de Código
- **`act`**: Ejecución y depuración local de workflows de GitHub Actions mediante contenedores Docker.
- **`httpie`**: Peticiones HTTP, inspección de cabeceras, auth tokens y pruebas de endpoints backend.
- **`dev-toolbelt`**: Recetas de análisis estático, seguridad y benchmarking (`SQLFluff`, `ShellCheck`, `Trivy`, `Hadolint`, `k6`, `grex`).
- **`antigravity-guide` & `agy-customizations`**: Guía y referencias de extensibilidad para el CLI de Antigravity.

---

## 🛠️ Catálogo de Herramientas CLI

### 1. Runtimes, Gestores de Versiones & Toolchains
- **[Mise-en-place](https://mise.jdx.dev/)**: Gestor universal políglota de versiones (Node, Python, Go, Java, Rust), binarios CLI y variables de entorno por directorio.
- **[Bun](https://bun.sh/)**: Runtime y empaquetador ultrarrápido para scripts, tests y herramientas en TypeScript/JavaScript.
- **pnpm**: Gestor de paquetes rápido y eficiente en disco con almacenamiento por enlace duro (hard-links).

### 2. Base de Datos y Arquitectura
- **[pgcli](https://www.pgcli.com/)**: Cliente interactivo de terminal para PostgreSQL con autocompletado en tiempo real de esquemas y tablas.
- **[tbls](https://github.com/k1LoW/tbls)**: Generador automático de documentación y diagramas entidad-relación (ER) en Markdown/SVG directo desde PostgreSQL.
- **[Atlas](https://atlasgo.io/)**: Linter de seguridad para migraciones y gestión declarativa de esquemas de bases de datos.

### 3. Contenedores y Optimización
- **Docker & Docker Compose**: Motor de contenedores y orquestación local de servicios.
- **[Lazydocker](https://github.com/jesseduffield/lazydocker)**: TUI interactiva para ciclo de vida de contenedores, volúmenes e inspección de logs en tiempo real.
- **[Dive](https://github.com/wagoodman/dive)**: Analizador capa por capa de imágenes Docker para reducir peso y optimizar build cache.
- **[Hadolint](https://github.com/hadolint/hadolint)**: Linter de Dockerfiles para asegurar buenas prácticas y estándares de seguridad.

### 4. Calidad de Código, Linting y Seguridad
- **[Trivy](https://trivy.dev/)**: Escáner de vulnerabilidades (CVEs) en imágenes Docker, dependencias e IaC.
- **[ShellCheck](https://www.shellcheck.net/)**: Linter y análisis estático para scripts en Bash y Shell.
- **[SQLFluff](https://sqlfluff.com/)**: Linter y formateador de código SQL y Stored Procedures para PostgreSQL.
- **[grex](https://github.com/pemistahl/grex)**: Generador por consola de expresiones regulares optimizadas a partir de casos de prueba.

### 5. Control de Versiones y Flujo Git
- **[Lazygit](https://github.com/jesseduffield/lazygit)**: TUI interactiva para Git (staging granular, rebases y ramas sin salir de la consola).
- **[Git Delta](https://github.com/dandavison/delta)**: Paginador de sintaxis para hacer que los diffs de Git sean legibles y claros.
- **[GitHub CLI (`gh`)](https://cli.github.com/)**: Gestión de pull requests, issues y workflows desde la terminal.

### 6. Testing, CI y Rendimiento
- **[Act](https://github.com/nektos/act)**: Ejecución local de workflows de GitHub Actions usando Docker.
- **[k6](https://k6.io/)**: Pruebas de carga, estrés y rendimiento para APIs y microservicios.
- **[Hyperfine](https://github.com/sharkdp/hyperfine)**: Herramienta de benchmarking comparativo de comandos y scripts con desvío estándar.
- **[gping](https://github.com/orf/gping)**: Gráfica de latencia de red en tiempo real en la terminal.
- **[doggo](https://doggo.mrkaran.dev/)**: Cliente DNS moderno con salida en tablas claras y soporte para DoH y DoT.

### 7. Productividad y Navegación CLI
- **[Ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep)**: Búsqueda recursiva ultrarrápida de texto en código.
- **[Fd (`fd`)](https://github.com/sharkdp/fd)**: Alternativa rápida e intuitiva al comando `find`.
- **[Bat](https://github.com/sharkdp/bat)**: Visor de archivos con resaltado de sintaxis e integración con Git.
- **[Eza](https://github.com/eza-community/eza)**: Reemplazo moderno de `ls` con vista de árbol, metadata e íconos.
- **[Fzf](https://github.com/junegunn/fzf)**: Buscador difuso interactivo para terminal.
- **[Jq](https://jqlang.github.io/jq/) & [Yq](https://github.com/mikefarah/yq)**: Procesadores y filtros de JSON, YAML y TOML.
- **[Dust](https://github.com/bootandy/dust)**: Analizador visual de uso de disco en terminal.
- **[Glow](https://github.com/charmbracelet/glow)**: Renderizador de Markdown en consola.
- **[Fx](https://fx.wtf/)**: Visor interactivo TUI de JSON con soporte para consultas JavaScript.
- **[Zoxide](https://github.com/ajeetdsouza/zoxide)**: Navegación inteligente de directorios (`z <directorio>`).

---

## 🚀 Guía de Instalación Rápida en Arch Linux

```bash
# 1. Paquetes oficiales del sistema
sudo pacman -S \
  neovim zed docker docker-compose lazygit git-delta github-cli \
  ripgrep fd bat eza fzf jq yq zoxide \
  httpie hyperfine trivy shellcheck hadolint pgcli grex \
  dust glow bun

# 2. Paquetes desde AUR (vía yay)
yay -S \
  mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx \
  zen-browser-bin obsidian repomix

# 3. Aplicaciones GUI (DbGate AppImage)
mkdir -p ~/.local/bin
curl -L https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.AppImage -o ~/.local/bin/dbgate
chmod +x ~/.local/bin/dbgate
```

---

## 🙏 Créditos & Proyectos de Referencia

Este entorno y flujo de trabajo toma inspiración directa de excelentes proyectos de la comunidad:

* **[Graft](https://github.com/nanonets/graft)**: Extracción y paquetización de contexto de repositorios para LLMs.
* **[RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk)**: Herramienta de optimización y reducción de contexto para agentes CLI de IA.
* **[Repomix](https://github.com/yamadashy/repomix)**: Empaquetador de repositorios de código para prompts y análisis de IA.
* **[gentle-ai](https://github.com/gentleman-programming/gentle-ai)** / **[gentleman-dots](https://github.com/gentleman-programming/gentleman.dots)**: Ecosistema de herramientas de IA, MCP servers ([Engram](https://github.com/gentleman-programming/engram), [Context7](https://github.com/gentleman-programming/context7), [CodeGraph](https://github.com/gentleman-programming/gentle-ai)) y configuración de Neovim/LazyVim de Alan Buscaglia (Gentleman Programming).
* **[Mise-en-place](https://github.com/jdx/mise)**: Gestor de entornos y toolchains de Jeff Dickey.
