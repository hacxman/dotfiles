# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias vim=vimx

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

color_prompt()
{
  N=4
  PROMPT="[$USER@$HOSTNAME ${PWD/#$HOME/~}]$ "
  unset PROMPT2
  for (( i=0; i < ${#PROMPT}; i++ )) do
    CLR=$((RANDOM % 256)) # 31-37
    CLR2=$((RANDOM % 256)) # 31-37

    #PROMPT2="$PROMPT2\[\033[38;5;${CLR}m\]\[\033[48;5;${CLR2}m\]${PROMPT:$i:1}"
    PROMPT2="$PROMPT2\[\033[38;5;${CLR}m\]${PROMPT:$i:1}"
  done
  PS1="$PROMPT2\[\033[0m\]"
}

my_prompt()
{
  green="\[\e[1;32m\]"
  red="\[\e[1;33m\]"
  blue="\[\e[1;34m\]"
  rst="\[\e[0m\]"
  yellow="\[\e[1;33m\]"
  branch=`git branch 2>/dev/null | grep -e "^\*\ \(.*\)$" | sed "s/^\*\ \(.*\)$/\1/"`
  shortp=`basename "$PWD"`
  curpath=${shortp/#$HOME/~}

  PS1="$blue[$green$USER$yellow@$green$HOSTNAME $blue$curpath $red$branch$blue]\$$rst "
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
