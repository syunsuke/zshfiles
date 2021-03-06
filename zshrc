# -*- shell-script -*-
# zsh config file
#

################################################################################
# 環境的なもの。（いずれ、.zshenvに書くべきかも）)
################################################################################
limit coredumpsize 0

typeset -U path
path=($path
    /usr/*/bin(N-/)
    /usr/local/*/bin(N-/)
    ~/.gem/ruby/**/bin/(N-/)
    ~/.cabal/bin/(N-/)
    ~/bin/(N-/))

export LANG=en_US.UTF-8
export EDITOR="vim"
export TERM=xterm-256color

################################################################################
# 履歴
################################################################################
HISTSIZE=100000
HISTFILE=~/.zsh_history
SAVEHIST=${HISTSIZE}

setopt hist_ignore_dups
setopt hist_ignore_space
setopt inc_append_history
setopt share_history
setopt extended_history
setopt hist_no_store
setopt hist_verify
#setopt no_flow_control


################################################################################
# ディレクトリ
################################################################################
setopt auto_cd
setopt auto_pushd

#chpwd_functions=($chpwd_functions dirs)


################################################################################
# 補完
################################################################################
zstyle ':completion:*' format '%BCompleting %d%b'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:default' list-colors ""
autoload -U compinit && compinit


################################################################################
# エイリアス
################################################################################
alias ls=' ls -F --color=auto'
alias la=' ls -aF --color=auto'
alias lla=' ls -alhF --color=auto'
alias ll=' ls -lhF --color=auto'
alias em=' emacs -nw'
alias berails='bundle exec rails'
alias be='bundle exec'

alias jnethack='cocot -t UTF-8 -p EUC-JP -- jnethack'
################################################################################
# キーバインド
################################################################################
bindkey -e


################################################################################
# 便利
################################################################################




################################################################################
# プロンプト
################################################################################

PROMPT="%% "

#source ~/.zsh.d/nekolinux_prompt
source ~/.zsh.d/simple_prompt
source ~/.zsh.d/git_info_prompt
