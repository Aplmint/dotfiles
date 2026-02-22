# zinit
source /usr/share/zinit/zinit.zsh

# plugin
# zinit light zdharma-continuum/fast-syntax-highlighting
# zinit light zsh-users/zsh-autosuggestions
zinit light hlissner/zsh-autopair
# zinit light zsh-users/zsh-completions

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# zsh-vi-mode
zinit ice depth=1
zinit light jeffreytse/zsh-vi-mode

## fzf-tab
#zinit light Aloxaf/fzf-tab
## disable sort when completing `git checkout`
#zstyle ':completion:*:git-checkout:*' sort false
## set descriptions format to enable group support
## NOTE: don't use escape sequences (like '%F{red}%d%f') here, fzf-tab will ignore them
#zstyle ':completion:*:descriptions' format '[%d]'
## set list-colors to enable filename colorizing
#zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
## force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
#zstyle ':completion:*' menu no
## preview directory's content with eza when completing cd
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
## custom fzf flags
## NOTE: fzf-tab does not follow FZF_DEFAULT_OPTS by default
#zstyle ':fzf-tab:*' fzf-flags --color=fg:1,fg+:2 --bind=tab:accept
## To make fzf-tab follow FZF_DEFAULT_OPTS.
## NOTE: This may lead to unexpected behavior since some flags break this plugin. See Aloxaf/fzf-tab#455.
#zstyle ':fzf-tab:*' use-fzf-default-opts yes
## switch group using `<` and `>`
#zstyle ':fzf-tab:*' switch-group '<' '>'

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Atom/.zshrc'

# autocompletions
autoload -Uz compinit
compinit
# End of lines added by compinstall

# alias
source ~/.zsh_alias

eval "$(starship init zsh)"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/Atom/.dart-cli-completion/zsh-config.zsh ]] && . /home/Atom/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

# zoxide
eval "$(zoxide init zsh --cmd z)"

# wsl
# eval "$(/usr/bin/wsl2-ssh-agent)"
