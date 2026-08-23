#!/usr/bin/env bash
set -e

# ==========================================
# Stack Dev: Script de Aprovisionamiento y Symlinks
# ==========================================

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DOTFILES_DIR="$REPO_DIR/dotfiles"

echo "🚀 Iniciando aprovisionamiento de Stack Dev..."
echo "📂 Directorio del repositorio: $REPO_DIR"

# 1. Instalar paquetes esenciales en Arch Linux si pacman está presente
if command -v pacman &>/dev/null; then
    echo "📦 Instalando paquetes oficiales de Arch Linux..."
    sudo pacman -S --needed --noconfirm \
        neovim zed docker docker-compose lazygit git-delta github-cli \
        ripgrep fd bat eza fzf jq yq zoxide stow \
        httpie hyperfine trivy shellcheck hadolint pgcli grex \
        dust glow bun tokei ast-grep openblas || true
fi

# 2. Instalar paquetes AUR si yay está presente
if command -v yay &>/dev/null; then
    echo "📦 Instalando paquetes de AUR..."
    yay -S --needed --noconfirm \
        mise-bin act-bin k6-bin tbls-bin atlas-bin bruno-bin fx \
        zen-browser-bin obsidian || true
fi

# 3. Herramientas CLI con pipx y npm
if command -v pipx &>/dev/null; then
    echo "🐍 Instalando herramientas CLI aisladas en Python..."
    pipx install files-to-prompt --force 2>/dev/null || true
    pipx install aider-chat --force 2>/dev/null || true
fi

if command -v npm &>/dev/null; then
    echo "🌐 Instalando herramientas globales de Node..."
    npm install -g repomix 2>/dev/null || true
fi

# 4. Crear enlaces simbólicos (Symlinks)
echo "🔗 Creando enlaces simbólicos (Symlinks)..."
mkdir -p "$HOME/.config" "$HOME/.local/bin"

link_config() {
    local src="$1"
    local dest="$2"
    if [ -e "$src" ]; then
        if [ -e "$dest" ] && [ ! -L "$dest" ]; then
            echo "⚠️  Haciendo backup de $dest a ${dest}.backup"
            mv "$dest" "${dest}.backup"
        fi
        ln -snf "$src" "$dest"
        echo "✅ Vinculado: $dest -> $src"
    fi
}

# Symlinks de configuraciones disponibles
if [ -d "$DOTFILES_DIR/nvim" ]; then
    link_config "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
fi

if [ -d "$DOTFILES_DIR/fish" ]; then
    link_config "$DOTFILES_DIR/fish" "$HOME/.config/fish"
fi

if [ -d "$DOTFILES_DIR/ghostty" ]; then
    link_config "$DOTFILES_DIR/ghostty" "$HOME/.config/ghostty"
fi

if [ -f "$DOTFILES_DIR/git/.gitconfig" ]; then
    link_config "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
fi

echo ""
echo "🎉 ¡Aprovisionamiento completado con éxito!"
echo "💡 Para añadir nuevas configuraciones a tus dotfiles, muevelas a $DOTFILES_DIR y vuelve a correr este script."
