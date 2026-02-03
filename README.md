```
 #  ------------------------------------------------------------
 #            _              
 #    _______| |__  _ __ ___ 
 #   |_  / __| '_ \| '__/ __|
 #  _ / /\__ \ | | | | | (__ 
 # (_)___|___/_| |_|_|  \___|
 # -----------------by iogirl
 # -------- github.com/iogirl ---------------------------------
```

** Required Packages for This ZSH Setup**
---------------------------------------------------------------

** --- ARCH LINUX ---------------------------------------------**
```
 sudo pacman -S \
   zsh \
   zsh-autosuggestions \
   zsh-syntax-highlighting \
   zoxide \
   starship \
   fzf \
   eza \
   bat \
   ripgrep \
   ttf-jetbrains-mono-nerd \
   kitty
```

** --- FEDORA -------------------------------------------------**
```
 sudo dnf install \
   zsh \
   zsh-autosuggestions \
   zsh-syntax-highlighting \
   zoxide \
   starship \
   fzf \
   eza \
   bat \
   ripgrep \
   kitty \
   jetbrains-mono-fonts
```
** Optional (for Nerd Font icons):**
 `sudo dnf install nerd-fonts`
 
** --- DEBIAN / UBUNTU ----------------------------------------**
 ```
sudo apt update
 sudo apt install \
   zsh \
   zsh-autosuggestions \
   zsh-syntax-highlighting \
   fzf \
   bat \
   ripgrep \
   kitty
```
---------------------------------------------------------------
** Then install manually (recommended):**
** Starship:**
   `curl -sS https://starship.rs/install.sh | sh`

** Zoxide:**
   `curl -sS https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | bash`

** eza (if not available in repo):**
   Install from GitHub release binary.

** Debian bat fix:**
   `alias bat='batcat'`

**After install:**
   `chsh -s /bin/zsh`
   Log out and back in.
