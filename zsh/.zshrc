# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

typeset -g DOTFILES_ZSH_DIR=${${(%):-%N}:A:h}
typeset -U path fpath

export EDITOR="nvim"
export VISUAL="$EDITOR"
export PAGER="less -FR"
export LESS="-FR"

export CLAUDE_CODE_USE_BEDROCK=1
export CLAUDE_CODE_MAX_OUTPUT_TOKENS=4096
export MAX_THINKING_TOKENS=1024
export SSH_AUTH_SOCK="$HOME/.bitwarden-ssh-agent.sock"

export PNPM_HOME="$HOME/Library/pnpm"
path=(
  "$HOME/.local/bin"
  "$HOME/.opencode/bin"
  "$PNPM_HOME"
  $path
)

setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus
setopt interactive_comments
setopt no_beep
setopt append_history
setopt inc_append_history
setopt share_history
setopt extended_history
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_space
setopt hist_reduce_blanks

HISTFILE="$HOME/.zsh_history"
HISTSIZE=100000
SAVEHIST=100000

bindkey -e
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^H' backward-kill-word
bindkey '^[[3;5~' kill-word

zmodload zsh/complist

if [[ -d "$HOME/.docker/completions" ]]; then
  fpath=("$HOME/.docker/completions" $fpath)
fi

autoload -Uz compinit
compinit -d "${XDG_CACHE_HOME:-$HOME/.cache}/zsh/.zcompdump-${ZSH_VERSION}"

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' special-dirs true

alias ls='ls -G'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -A'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
alias v='$EDITOR'

export NVM_DIR="$HOME/.nvm"
for nvm_prefix in /opt/homebrew/opt/nvm /usr/local/opt/nvm; do
  if [[ -s "$nvm_prefix/nvm.sh" ]]; then
    source "$nvm_prefix/nvm.sh"
    [[ -s "$nvm_prefix/etc/bash_completion.d/nvm" ]] && source "$nvm_prefix/etc/bash_completion.d/nvm"
    break
  fi
done

[[ -s "$HOME/.atuin/bin/env" ]] && source "$HOME/.atuin/bin/env"
command -v atuin >/dev/null 2>&1 && eval "$(atuin init zsh)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"

if [[ -r "$DOTFILES_ZSH_DIR/powerlevel10k/powerlevel10k.zsh-theme" ]]; then
  source "$DOTFILES_ZSH_DIR/powerlevel10k/powerlevel10k.zsh-theme"
elif [[ -r /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
elif [[ -r /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme ]]; then
  source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme
fi

if [[ -r "$DOTFILES_ZSH_DIR/.p10k.zsh" ]]; then
  source "$DOTFILES_ZSH_DIR/.p10k.zsh"
elif [[ -r "$HOME/.p10k.zsh" ]]; then
  source "$HOME/.p10k.zsh"
fi
