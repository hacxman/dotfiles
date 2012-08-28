# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mzatko/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
autoload -U colors && colors
precmd()
{
  green="\[\e[1;32m\]"
  red="\[\e[1;33m\]"
  blue="\[\e[1;34m\]"
  rst="\[\e[0m\]"
  yellow="\[\e[1;33m\]"
  branch=`git branch 2>/dev/null | grep -e "^\*\ \(.*\)$" | sed "s/^\*\ \(.*\)$/\1/"`
  shortp=`basename "$PWD"`
  curpath=${shortp/#$HOME/~}

  PS1="%B%F{blue}[%F{green}$USER%F{yellow}@%F{green}$HOSTNAME %F{blue}$curpath %F{red}$branch%F{blue}]\$%f%b "
}

export PROMPT_COMMAND=my_prompt
#PS1="\$(~/.rvm/bin/rvm-prompt) $PS1"
export GOROOT=/home/mzatko/personal/hackerspace/goarm/go
#/home/mzatko/local/go
export GOARCH=amd64
export GOOS=linux
#export IDEA_JDK=/home/mzatko/local/jdk1.6.0_27
#/home/mzatko/local/jdk1.7.0
export PATH=$PATH:/mnt/exp/chromium/depot_tools
export PATH=$PATH:$GOROOT/bin:/mnt/exp/.cabal/bin



export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

_JAVA_AWT_WM_NONREPARENTING=1; export _JAVA_AWT_WM_NONREPARENTING
