 #  ------------------------------------------------------------
 #            _              
 #    _______| |__  _ __ ___ 
 #   |_  / __| '_ \| '__/ __|
 #  _ / /\__ \ | | | | | (__ 
 # (_)___|___/_| |_|_|  \___|
 # -----------------by iogirl
 # -------- github.com/iogirl/zshrc-config ----------------------

export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=kitty

# --- important --------------
# ----------------------------

# --- disable terminal flow control --- (so Ctrl+S works)
stty -ixon

# --- Completion -------------
autoload -Uz compinit
compinit

# --- History ----------------
setopt autocd
setopt hist_ignore_dups
setopt share_history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# --- Aliases ----------------
alias cat='bat'
alias ls='eza --icons'
alias ll='eza -lah --icons'
alias tree='eza --tree --icons'
alias grep='grep --color=auto'
alias vim='nvim'

# --- vi keybinds ------------
bindkey -v

function zle-keymap-select {
  if [[ $KEYMAP == vicmd ]]; then
    echo -ne '\e[1 q'   # block cursor
  else
    echo -ne '\e[5 q'   # beam cursor
  fi
}
zle -N zle-keymap-select
zle-keymap-select

# --- auto prefixes ----------
insert_sudo() {
  if [[ "$LBUFFER" != sudo* ]]; then
    LBUFFER="sudo $LBUFFER"
  fi
}
zle -N insert_sudo
bindkey '^S' insert_sudo


# --- Folder / file colors ---
export LS_COLORS="${LS_COLORS:+$LS_COLORS:}di=1;38;5;213"

# --- Autosuggestions --------
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ffc5d3"
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- fzf --------------------
if command -v fzf >/dev/null; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi

bindkey -M viins '^R' fzf-history-widget

# --- Zoxide -----------------
eval "$(zoxide init zsh)"

# --- Starship ---------------
eval "$(starship init zsh)"

# --- Syntax highlighting ---- (MUST BE LAST!)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Syntax highlight styles --- (AFTER PLUGIN LOADS!)
ZSH_HIGHLIGHT_STYLES[command]='fg=#77DD77,bold'
ZSH_HIGHLIGHT_STYLES[default]='fg=#77DD77'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=#ff79c6'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=#ff79c6'
ZSH_HIGHLIGHT_STYLES[option]='fg=#8be9fd'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[comment]='fg=#5f875f'
