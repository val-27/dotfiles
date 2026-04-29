# Mac Dotfiles & Keybinding Cheatsheet

This document outlines the configuration and workflows for your ported dotfiles.

## 🚀 Initial Setup (New Mac)

1.  **Install Homebrew:** `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2.  **Install Dependencies:**
    ```bash
    brew install stow eza fzf bat zoxide starship tmux neovim mise k9s
    ```
3.  **Install Apps:** Hammerspoon, Rectangle Pro, Raycast, Ghostty/Alacritty.
4.  **Clone & Link Dotfiles:**
    ```bash
    git clone <your-repo-url> ~/dotfiles
    cd ~/dotfiles
    ./sync.sh install
    ```
5.  **Initialize Mise:** `mise install` (installs latest Go, Python, Rust).

---

## 🐚 Shell Workflow (Zsh + Aliases)

Your shell is optimized for speed and fuzzy finding.

| Command | Action | Description |
| :--- | :--- | :--- |
| `ls` | `eza -lh ...` | Modern `ls` with icons and git status. |
| `cd <dir>` | `zoxide` | Smart "jump" navigation. Use `zd` for explicit zoxide. |
| `ws` | `cd ~/Workspace` | Jump to your main Workspace directory. |
| `ff` | `fzf + bat` | Fuzzy find files with a syntax-highlighted preview. |
| `eff` | Edit with `ff` | Fuzzy find a file and immediately open it in Neovim. |
| `n` | `nvim .` | Quick open current directory in Neovim. |
| `t` | `tmux` | Attach to or create a session named 'Work'. |
| `cx` | `claude` | Clear screen and start Claude CLI with elevated permissions. |
| `lzd` | `lazydocker` | TUI for Docker management. |
| `g` | `git` | Git shorthand. |

---

## 🪟 Tmux Workflow

**Prefix:** `Ctrl + Space` (Secondary: `Ctrl + b`)

### Pane Management
| Binding | Action |
| :--- | :--- |
| `Prefix + h` | Split Pane **Horizontal** (top/bottom) |
| `Prefix + v` | Split Pane **Vertical** (left/right) |
| `Ctrl + h/j/k/l` | **Focus** Pane (Vim keys) |
| `Prefix + x` | Kill Pane |

### Window & Session Management
| Binding | Action |
| :--- | :--- |
| `Prefix + c` | **New Window** (at current path) |
| `Prefix + k` | **Kill Window** |
| `Prefix + r` | **Rename Window** |
| `Ctrl + Shift + h/l` | **Next/Previous** Window |
| `Prefix + 1-9` | **Jump** to Window 1-9 |
| `Prefix + C` | **New Session** |
| `Prefix + K` | **Kill Session** |
| `Prefix + R` | **Rename Session** |
| `Ctrl + Shift + k/j` | **Next/Previous** Session |
| `Prefix + q` | **Reload** tmux configuration |

### Copy Mode (Vi)
| Binding | Action |
| :--- | :--- |
| `v` | Begin selection |
| `y` | Copy selection |

---

## ⌨️ System-Wide Keybindings

### Hammerspoon (Focus Management)
| Binding | Action |
| :--- | :--- |
| `Cmd + Ctrl + h/Left` | Focus window to the **West** |
| `Cmd + Ctrl + l/Right` | Focus window to the **East** |
| `Cmd + Ctrl + k/Up` | Focus window to the **North** |
| `Cmd + Ctrl + j/Down` | Focus window to the **South** |

### Rectangle Pro (Window Snapping)
| Binding | Action |
| :--- | :--- |
| `Cmd + Opt + h` | Snap to **Left Half** |
| `Cmd + Opt + l` | Snap to **Right Half** |
| `Cmd + Opt + k` | Snap to **Top Left** |
| `Cmd + Opt + j` | Snap to **Bottom Left** |
| `Cmd + Opt + Shift + k` | Snap to **Top Right** |
| `Cmd + Opt + Shift + j` | Snap to **Bottom Right** |
| `Cmd + Opt + Ctrl + h` | **First Fourth** (Left) |
| `Cmd + Opt + Ctrl + l` | **Last Fourth** (Right) |
| `Cmd + Opt + Ctrl + k` | **Top Left Eighth** |
| `Cmd + Opt + Ctrl + j` | **Bottom Left Eighth** |
| `Cmd + Opt + Ctrl + Shift + k` | **Top Right Eighth** |
| `Cmd + Opt + Ctrl + Shift + j` | **Bottom Right Eighth** |
| `Cmd + Opt + Enter` | **Center Half** |
| `Cmd + Opt + Ctrl + Enter` | **Maximize** Window |

### Application Launching (Raycast)
##### Raycast - 12345678
| Binding | Action |
| :--- | :--- |
| `Cmd + Opt + 1` | **Raycast** Launcher |
| `Cmd + Opt + 2` | Launch **Terminal** (Alacritty) |
| `Cmd + Opt + 3` | Launch **Notes** (Obsidian) |
| `Cmd + Opt + 4` | Launch **Browser** (Chrome) |

---

## 📝 Neovim (LazyVim)

You are using a standard **LazyVim** setup with a few specific additions (Go, Python, Rust, TypeScript).

-   **Leader Key:** `Space`
-   **File Explorer:** `<leader>e` (Neo-tree)
-   **Find Files:** `<leader>ff` (Telescope)
-   **Live Grep:** `<leader>sg` (Telescope)
-   **Find Plugin Files:** `<leader>fp` (Custom)
-   **Git Status:** `<leader>gs`
-   **TypeScript Organize Imports:** `<leader>co` (when in TS files)
-   **TypeScript Rename File:** `<leader>cR` (when in TS files)

---

## 🎨 Terminal Themes
-   **Alacritty:** Catppuccin Mocha (`#1e1e2e` background).
-   **Font:** JetBrainsMono Nerd Font (size 12).
