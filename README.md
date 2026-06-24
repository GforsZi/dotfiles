# Dotfiles

A collection of my system configurations managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Why use GNU Stow?

Stow is an efficient symlink management tool for dotfiles. Instead of manually copying files or creating individual symlinks, Stow manages entire configuration directories by creating symlinks from the dotfiles repository to your home directory (`~`).

### Symlink Mechanism
When you run `stow <folder_name>`, Stow creates a symlink for each file within that folder to the corresponding location in your home directory. Example:
- Dotfiles folder: `~/dotfiles/zsh/.zshrc`
- Result: `~/.zshrc` becomes a symlink pointing to `~/dotfiles/zsh/.zshrc`.

**Advantages:**
1. **Version Control:** All configurations are kept in a single directory (Git repository).
2. **Portability:** Easily synchronize and deploy across different machines.
3. **Cleanup:** Removing configurations is simple by running `stow -D <folder_name>` (delete/unstow).

## GNU Stow Installation

Ensure `stow` is installed on your system:

- **Debian/Ubuntu:**
  ```bash
  sudo apt update && sudo apt install stow -y
  ```
- **Arch Linux:**
  ```bash
  sudo pacman -S stow
  ```
- **macOS (Homebrew):**
  ```bash
  brew install stow
  ```

## Setup Configuration

1. **Clone this repository:**
   ```bash
   git clone <your-repository-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. **Use Stow to apply configurations:**
   You can install configurations individually or all at once.

   - Apply a specific configuration (e.g., zsh):
     ```bash
     stow zsh
     ```
   - Apply all configurations:
     ```bash
     stow .
     ```

3. **Removing (Unstowing) configurations:**
   If you want to remove the symlinks:
   ```bash
   stow -D <folder_name>
   ```

## Directory Structure
- `zsh/`: Zsh configuration.
- `nvim/`: Neovim configuration.
- `tmux/`: Tmux configuration.
- `kitty/`: Kitty terminal configuration.
