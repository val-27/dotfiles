#!/usr/bin/env zsh

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
# Automatically detect all top-level directories except .git
PACKAGES=($(ls -d */ | cut -f1 -d'/'))

cd "$DOTFILES_DIR"

case "$1" in
    install)
        echo "🚀 Installing/Refreshing all dotfiles..."
        mkdir -p "$HOME/Workspace"
        for pkg in "${PACKAGES[@]}"; do
            echo "Stowing $pkg..."
            stow -t "$HOME" -R "$pkg"
        done
        echo "✅ Done!"
        ;;
    update)
        echo "📥 Pulling latest changes from remote..."
        git pull origin master
        echo "Refreshing links..."
        for pkg in "${PACKAGES[@]}"; do
            stow -t "$HOME" -R "$pkg"
        done
        echo "✅ System updated!"
        ;;
    save)
        echo "📤 Saving local changes..."
        git add .
        read -p "Commit message (default: 'update'): " msg
        msg=${msg:-update}
        git commit -m "$msg"
        git push origin master
        echo "✅ Changes pushed!"
        ;;
    *)
        echo "Usage: $0 {install|update|save}"
        echo "  install: Force-refresh all symlinks"
        echo "  update : Pull from git and refresh links"
        echo "  save   : Add, commit, and push all changes"
        ;;
esac
