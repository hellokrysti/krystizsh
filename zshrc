# Created by newuser for 5.9
setopt PROMPT_SUBST
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
export CLICOLOR=1

# Saved themes will override KRYSTI_THEME in ~/.krystizsh
# Delete ~/.krystizsh to restore this theme setting
KRYSTI_THEME="kandi"
KRYSTI_FILL="true" # Fill prompt with border lines
KRYSTI_PATH="${HOME}/krystizsh"
# Leave the below stuff alone

fpath=( "${KRYSTI_PATH}" "${fpath[@]}" )
autoload -Uz $fpath[1]/*(.:t)
autoload -Uz compinit promptinit add-zsh-hook
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} 
zstyle ':completion:*:*:*:*:descriptions' format '%F{201}-- %d --%f'
zstyle ':completion:*' completer _extensions _complete _approximate
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.zcompcache"
zstyle ':completion:*' complete true
zle -C alias-expension complete-word _generic
bindkey '^Xa' alias-expension
zstyle ':completion:alias-expension:*' completer _expand_alias
zstyle ':completion:*' menu select
zstyle ':completion:*' complete-options true
zstyle ':completion:*' file-sort modification
zstyle ':completion:*:*:*:*:corrections' format '%F{99}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:descriptions' format '%F{129}-- %D %d --%f'
zstyle ':completion:*:*:*:*:messages' format ' %F{165} -- %d --%f'
zstyle ':completion:*:*:*:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*' group-name ''
zstyle ':completion:*:*:-command-:*:*' group-order aliases builtins functions commands
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' keep-prefix true
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# bindkey
bindkey "^U"    backward-kill-line
bindkey "^u"    backward-kill-line
bindkey "^[l"   down-case-word
bindkey "^[L"   down-case-word

# alt+<- | alt+->
bindkey "^[f" forward-word
bindkey "^[b" backward-word

# ctrl+<- | ctrl+->
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

compinit
promptinit
krysti_load
kload
krysti
bindkey '\e[3~'   delete-char
bindkey '^A'      beginning-of-line
bindkey '^E'      end-of-line
bindkey '^R'      history-incremental-pattern-search-backward
# Tmux home/end
bindkey '\e[1~'      beginning-of-line
bindkey '\e[4~'      end-of-line
# Urxvt
bindkey '\e[7~'      beginning-of-line
bindkey '\e[8~'      end-of-line
