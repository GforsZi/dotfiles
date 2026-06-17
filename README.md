# Dotfiles

Koleksi konfigurasi sistem saya yang dikelola menggunakan [GNU Stow](https://www.gnu.org/software/stow/).

## Mengapa Menggunakan GNU Stow?

Stow adalah alat manajemen symlink yang sangat efisien untuk dotfiles. Alih-alih menyalin file secara manual atau membuat symlink satu per satu, Stow mengelola seluruh direktori konfigurasi dengan membuat symlink dari direktori dotfiles ke direktori home (`~`).

### Mekanisme Symlink
Saat Anda menjalankan `stow <nama_folder>`, Stow akan membuat symlink untuk setiap file di dalam folder tersebut ke lokasi yang sesuai di direktori root Anda. Contoh:
- Folder dotfiles: `~/dotfiles/zsh/.zshrc`
- Hasil: `~/.zshrc` akan menjadi sebuah symlink yang menunjuk ke `~/dotfiles/zsh/.zshrc`.

**Keuntungan:**
1. **Version Control:** Seluruh konfigurasi berada dalam satu direktori (Git repository).
2. **Portabilitas:** Mudah untuk melakukan sinkronisasi ke mesin lain.
3. **Pembersihan:** Menghapus konfigurasi cukup dengan menjalankan `stow -D <nama_folder>` (delete/unstow).

## Instalasi GNU Stow

Pastikan Anda telah menginstal `stow` di sistem Anda:

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

## Cara Setup Konfigurasi

1. **Clone repositori ini:**
   ```bash
   git clone <url-repositori-anda> ~/dotfiles
   cd ~/dotfiles
   ```

2. **Gunakan Stow untuk menginstal konfigurasi:**
   Anda bisa menginstal semua konfigurasi sekaligus atau satu per satu.

   - Menginstal konfigurasi tertentu (misal: zsh):
     ```bash
     stow zsh
     ```
   - Menginstal semua folder yang ada:
     ```bash
     stow .
     ```

3. **Menghapus (Unstow) konfigurasi:**
   Jika Anda ingin menghapus symlink konfigurasi tersebut:
   ```bash
   stow -D <nama_folder>
   ```

## Struktur Direktori
- `zsh/`: Konfigurasi Zsh.
- `nvim/`: Konfigurasi Neovim.
- `tmux/`: Konfigurasi Tmux.
- `kitty/`: Konfigurasi terminal Kitty.
