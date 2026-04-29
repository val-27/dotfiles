# Dotfiles

My centralized system and application configurations, managed with **GNU Stow**. Optimized for **Vim-style (h,j,k,l) navigation** across system tools and window management.

## Prerequisites

- **Homebrew**: For managing packages on macOS.
- **Essential Tools**: `stow`, `eza`, `fzf`, `bat`, `zoxide`, `starship`, `tmux`, `neovim`, `mise`, `k9s`.

```bash
# Install core dependencies
brew install stow eza fzf bat zoxide starship tmux neovim mise k9s
```

## Structure

The repository is organized into directories, each representing an application. Within these directories, the file structure mirrors the path from the home (`~`) directory.

Example:
- `~/dotfiles/zsh/.zshrc` -> symlinked to `~/.zshrc`
- `~/dotfiles/nvim/.config/nvim/init.lua` -> symlinked to `~/.config/nvim/init.lua`

## Usage & Automation

A `sync.sh` script is provided to automate management.

```bash
cd ~/dotfiles
./sync.sh install  # Force-refresh all symlinks
./sync.sh save     # Commit and push local changes
./sync.sh update   # Pull remote changes and refresh links
```

## Installation / Restoration

To deploy these dotfiles on a new system:

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. **Remove existing default files:**
   *Caution: This will delete your current local configurations.*
   ```bash
   rm ~/.zshrc ~/.zprofile
   rm -rf ~/.config/nvim ~/.config/alacritty ~/.config/tmux # Add others as needed
   ```

3. **Stow the configurations:**
   ```bash
   stow zsh git nvim alacritty tmux starship btop hammerspoon rectangle ghostty mise raycast opencode shell
   ```
   *Alternatively, stow everything:* `stow *`

## Management

### Adding a new config
To add a new application configuration (e.g., `bash`):

1. Create the directory structure:
   ```bash
   mkdir -p ~/dotfiles/bash
   mv ~/.bashrc ~/dotfiles/bash/
   ```
2. Link it:
   ```bash
   cd ~/dotfiles && stow bash
   ```

### Updating
Since the files are symlinked, you can edit them directly in their normal locations (e.g., `nvim ~/.zshrc`). Changes are immediately reflected in the `~/dotfiles` directory.

To back up your changes:
```bash
cd ~/dotfiles
git add .
git commit -m "Update configurations"
git push
```

## Included Configurations
- **Shell:** zsh, starship, mise, shell
- **Editors:** nvim
- **Terminals:** alacritty, ghostty
- **Tools:** git, tmux, btop, raycast, hammerspoon, rectangle, k9s
- **Misc:** opencode
