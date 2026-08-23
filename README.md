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

## 🤖 Ecosistema de Inteligencia Artificial: Comparativas (Con vs Sin Herramienta)

### 1. [RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk) - Reducción de Tokens
* **El Problema (Sin RTK):** Al ejecutar tests o logs (`cargo test` o `npm test`), la terminal escupe 5,000 líneas de texto repetitivo. Si le pasás eso a la IA, te come 80k tokens y satura la ventana de contexto.
* **La Solución (Con RTK):**
  ```bash
  rtk npm test
  ```
* **Resultado que entrega:**
  ```text
  [RTK: Filtered 3,420 lines -> 18 lines | Token reduction: 94%]
  ❌ FAIL src/billing/billing.service.spec.ts
     ● BillingService > calculateTotal > should apply tax correctly
       Expected: 112.50
       Received: 100.00
  ```

---

### 2. [ast-grep (`sg`)](https://github.com/ast-grep/ast-grep) - Búsqueda por Estructura Sintáctica
* **El Problema (Sin ast-grep):** Con `ripgrep` buscás texto. Si buscás `@Injectable()` te trae comentarios, strings y definiciones falsas. No podés buscar "métodos que reciban 2 parámetros y devuelvan Promise".
* **La Solución (Con ast-grep):**
  ```bash
  sg -p '@Get($ROUTE) async $METHOD($$$) { $$$ }' --lang typescript
  ```
* **Resultado que entrega:**
  ```typescript
  // src/orders/orders.controller.ts:24
  @Get(':id')
  async findOne(@Param('id') id: string) {
    return this.ordersService.findOne(id);
  }
  ```

---

### 3. [tbls](https://github.com/k1LoW/tbls) - Documentación Automática de Base de Datos
* **El Problema (Sin tbls):** La base de datos cambia con cada migración y la documentación en Notion/Confluence queda desactualizada en 2 semanas.
* **La Solución (Con tbls):**
  ```bash
  tbls doc postgresql://postgres:pass@localhost:5432/jasrapo_db ./docs/schema
  ```
* **Resultado que genera:**
  Crea una carpeta `docs/schema/` con:
  * `README.md` con la lista de todas las tablas, columnas, tipos y comentarios.
  * Diagramas Entidad-Relación (`schema.svg` y Mermaid) auto-generados listos para ver en GitHub.

---

### 4. [Dive](https://github.com/wagoodman/dive) - Análisis de Capas Docker
* **El Problema (Sin Dive):** Hacés `docker build` y tu imagen pesa 1.8 GB pero no sabés qué comando del `Dockerfile` metió archivos basura temporales.
* **La Solución (Con Dive):**
  ```bash
  dive mi-backend:latest
  ```
* **Resultado interactivo en terminal:**
  ```text
  Image Size: 1.2 GB
  Potential wasted space: 430 MB (35% efficiency score: B)
  Layer 4: RUN npm install -> wasted 310 MB in /root/.npm cache
  Layer 6: COPY . . -> wasted 120 MB in dist/ uncleaned artifacts
  ```

---

### 5. [Hadolint](https://github.com/hadolint/hadolint) - Linter de Dockerfiles
* **El Problema (Sin Hadolint):** Escribís Dockerfiles que compilan pero usan `:latest`, no limpian cachés de paquetes o corren como `root` en producción.
* **La Solución (Con Hadolint):**
  ```bash
  hadolint Dockerfile
  ```
* **Resultado que entrega:**
  ```text
  Dockerfile:3 DL3008 warning: Pin versions in apt get install (e.g. apt-get install <package>=<version>)
  Dockerfile:7 DL3018 warning: Pin versions in apk add.
  Dockerfile:12 DL3002 error: Last USER should not be root.
  ```

---

### 6. [pgcli](https://www.pgcli.com/) - PostgreSQL Interactivo con Autocompletado
* **El Problema (Sin pgcli):** En `psql` tenés que acordarte el nombre exacto de las tablas (`\dt`), hacer `\d ordenes_trabajo` en otra pestaña para ver las columnas y no hay resaltado.
* **La Solución (Con pgcli):** Escribís `SELECT ord.` y te abre un menú desplegable interactivo en tiempo real con las columnas reales de la base de datos conectada.

---

### 7. [Hyperfine](https://github.com/sharkdp/hyperfine) - Benchmarking Estadístico
* **La Solución (Con Hyperfine):**
  ```bash
  hyperfine --warmup 3 'pnpm build' 'bun run build'
  ```
* **Resultado que entrega:**
  ```text
  Benchmark 1: pnpm build
    Time (mean ± σ):      4.120 s ±  0.120 s
  Benchmark 2: bun run build
    Time (mean ± σ):      1.040 s ±  0.035 s
  
  Summary
    'bun run build' ran 3.96 ± 0.18 times faster than 'pnpm build'
  ```

---

## 🚀 Guía de Instalación Rápida en Arch Linux

```bash
# 1. Paquetes oficiales del sistema
sudo pacman -S \
  openblas \
  neovim zed docker docker-compose lazygit git-delta github-cli \
  ripgrep fd bat eza fzf jq yq zoxide \
  httpie hyperfine trivy shellcheck hadolint pgcli grex \
  dust glow bun tokei ast-grep

# 2. Paquetes desde AUR (vía yay)
yay -S \
  mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx \
  zen-browser-bin obsidian

# 3. Herramientas CLI vía pipx / npm
pipx install files-to-prompt
pipx install aider-chat
npm install -g repomix

# 4. Aplicaciones GUI (DbGate AppImage)
mkdir -p ~/.local/bin
curl -L https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.AppImage -o ~/.local/bin/dbgate
chmod +x ~/.local/bin/dbgate
```

---

## 🙏 Créditos & Proyectos de Referencia

* **[Aider](https://github.com/paul-gauthier/aider)**: Pair programming impulsado por IA y mapa semántico de repositorios.
* **[Graft](https://github.com/nanonets/graft)** / **[Repomix](https://github.com/yamadashy/repomix)**: Extracción y paquetización de contexto de repositorios para LLMs.
* **[RTK (Reduce Tool Kit)](https://github.com/rtk-ai/rtk)**: Herramienta de optimización y reducción de contexto para agentes CLI de IA.
* **[ast-grep](https://github.com/ast-grep/ast-grep)**: Búsqueda y reescritura de código por AST en Rust.
* **[gentle-ai](https://github.com/gentleman-programming/gentle-ai)** / **[gentleman-dots](https://github.com/gentleman-programming/gentleman.dots)**: Ecosistema de herramientas de IA, MCP servers ([Engram](https://github.com/gentleman-programming/engram), [Context7](https://github.com/gentleman-programming/context7), [CodeGraph](https://github.com/gentleman-programming/gentle-ai)) y configuración de Neovim/LazyVim de Alan Buscaglia (Gentleman Programming).
* **[Mise-en-place](https://github.com/jdx/mise)**: Gestor de entornos y toolchains de Jeff Dickey.
