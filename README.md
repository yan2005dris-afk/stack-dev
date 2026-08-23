# 🛠️ Stack Dev - Entorno y Herramientas de Desarrollo

Catálogo integral de herramientas de terminal, utilidades de base de datos, inspección de redes, contenedores y automatización local para desarrollo moderno full-stack (NestJS, TypeScript, Angular, PostgreSQL, Docker, Arch Linux).

---

## 📦 Catálogo de Herramientas

### 1. Base de Datos y Arquitectura
- **[DbGate](https://dbgate.org/)**: Cliente gráfico ágil y liviano para SQL y NoSQL (PostgreSQL, MySQL, Redis, MongoDB, SQLite).
- **[pgcli](https://www.pgcli.com/)**: Cliente interactivo de terminal para PostgreSQL con autocompletado de esquema en tiempo real y resaltado de sintaxis.
- **[tbls](https://github.com/k1LoW/tbls)**: Generador automático de documentación y diagramas entidad-relación (ER) en Markdown/Mermaid directo desde la base de datos.
- **[Atlas](https://atlasgo.io/)**: Linter de seguridad para migraciones y gestión declarativa de esquemas de bases de datos.

### 2. Pruebas de API e Inspección de Red
- **[Bruno](https://www.usebruno.com/)**: Cliente de APIs offline-first, ligero y Git-friendly (guarda colecciones en archivos planos dentro del repo).
- **[HTTPie](https://httpie.io/)**: Cliente HTTP para consola con sintaxis clara y salida formateada en color.
- **[gping](https://github.com/orf/gping)**: Comando ping interactivo con gráfica de latencia en tiempo real en la terminal.
- **[doggo](https://doggo.mrkaran.dev/)**: Cliente DNS moderno con salida en tablas claras y soporte para DoH y DoT.

### 3. Contenedores y Optimización
- **Docker & Docker Compose**: Motor de contenedores y orquestación local de servicios.
- **[Lazydocker](https://github.com/jesseduffield/lazydocker)**: Interfaz TUI para gestionar ciclos de vida, volúmenes e inspección de logs en tiempo real.
- **[Dive](https://github.com/wagoodman/dive)**: Analizador capa por capa de imágenes Docker para reducir peso y optimizar el caché de compilación.
- **[Hadolint](https://github.com/hadolint/hadolint)**: Linter de Dockerfiles para asegurar buenas prácticas y estándares de seguridad.

### 4. Calidad de Código, Linting y Seguridad
- **[Trivy](https://trivy.dev/)**: Escáner de seguridad y vulnerabilidades (CVEs) en imágenes Docker, dependencias e infraestructura como código (IaC).
- **[ShellCheck](https://www.shellcheck.net/)**: Linter y análisis estático para scripts en Bash y Shell.
- **[SQLFluff](https://sqlfluff.com/)**: Linter y formateador de código SQL y Stored Procedures para PostgreSQL.
- **[grex](https://github.com/pemistahl/grex)**: Generador por consola de expresiones regulares optimizadas a partir de casos de prueba.

### 5. Runtimes y Gestores de Versiones
- **[Mise-en-place](https://mise.jdx.dev/)**: Gestor universal de versiones de lenguajes (Node, Python, Go, Java, Rust) y variables de entorno por proyecto.
- **[Bun](https://bun.sh/)**: Runtime y empaquetador ultrarrápido para scripts, tests y herramientas en TypeScript/JavaScript.
- **pnpm**: Gestor de paquetes rápido y eficiente en uso de espacio en disco.

### 6. Control de Versiones y Flujo Git
- **[Lazygit](https://github.com/jesseduffield/lazygit)**: TUI interactiva para Git (staging granular, rebases y gestión de ramas sin salir de la consola).
- **[Git Delta](https://github.com/dandavison/delta)**: Paginador de sintaxis para hacer que los diffs de Git sean legibles y claros.
- **[GitHub CLI (`gh`)](https://cli.github.com/)**: Gestión de pull requests, issues y workflows de CI/CD desde la terminal.

### 7. Testing, CI y Rendimiento
- **[Act](https://github.com/nektos/act)**: Ejecución local de workflows de GitHub Actions usando Docker.
- **[k6](https://k6.io/)**: Pruebas de carga, estrés y rendimiento para APIs y microservicios.
- **[Hyperfine](https://github.com/sharkdp/hyperfine)**: Herramienta de benchmarking comparativo de comandos y scripts con desvío estándar.

### 8. Utilidades CLI y Productividad
- **[Ripgrep (`rg`)](https://github.com/BurntSushi/ripgrep)**: Búsqueda recursiva ultrarrápida de texto en código.
- **[Fd (`fd`)](https://github.com/sharkdp/fd)**: Alternativa rápida e intuitiva al comando `find`.
- **[Bat](https://github.com/sharkdp/bat)**: Visor de archivos con resaltado de sintaxis e integración con Git.
- **[Eza](https://github.com/eza-community/eza)**: Reemplazo moderno de `ls` con vista de árbol, metadata e íconos.
- **[Fzf](https://github.com/junegunn/fzf)**: Buscador difuso interactivo para terminal.
- **[Jq](https://jqlang.github.io/jq/) & [Yq](https://github.com/mikefarah/yq)**: Procesadores y filtros de JSON, YAML y TOML.
- **[Dust](https://github.com/bootandy/dust)**: Analizador visual de uso de disco en terminal.
- **[Glow](https://github.com/charmbracelet/glow)**: Renderizador de Markdown en consola.
- **[Fx](https://fx.wtf/)**: Visor interactivo TUI de JSON con soporte para consultas JavaScript.
- **[Zoxide](https://github.com/ajeetdsouza/zoxide)**: Navegación inteligente de directorios basada en frecuencia de uso (`z <directorio>`).

---

## 🚀 Guía de Instalación Rápida en Arch Linux

```bash
# 1. Paquetes oficiales del sistema
sudo pacman -S \
  docker docker-compose lazygit git-delta github-cli \
  ripgrep fd bat eza fzf jq yq zoxide \
  httpie hyperfine trivy shellcheck hadolint pgcli grex \
  dust glow bun

# 2. Paquetes desde AUR (vía yay)
yay -S \
  mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx

# 3. Aplicaciones GUI (DbGate AppImage)
mkdir -p ~/.local/bin
curl -L https://github.com/dbgate/dbgate/releases/latest/download/dbgate-latest.AppImage -o ~/.local/bin/dbgate
chmod +x ~/.local/bin/dbgate
```
