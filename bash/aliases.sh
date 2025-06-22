#!/bin/bash

#------------------------------------------------------------------------------
# Aliases
#------------------------------------------------------------------------------

alias bashrc='source ~/.bashrc'

# pretty pwd
alias ppwd='sed "s:\([^/\.]\)[^/]*/:\1/:g" <<< ${PWD/#$HOME/\~}'

# automatic extract
ex ()
{
  if [ -f "$1" ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# switch themes
themes ()
{
    if [ $# -ge 1 ]; then
        if [ $1 = "light" ]; then
            export THEME=LIGHT
            kitty +kitten themes --reload-in=all Rosé Pine Dawn
        else
            export THEME=DARK
            kitty +kitten themes --reload-in=all Rosé Pine
        fi
        return
    else
        echo "choose either dark or light"
    fi
}

# pretty ls
alias ll='ls -AlXh --group-directories-first --color=auto'
alias la='ls -A --group-directories-first --color=auto'
alias lt='ls -AR --group-directories-first --color=auto'
alias l.='ls -AdXh --group-directories-first --color=auto .*'
source ~/.config/bash/ls_colors.sh

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# neovim
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

# colorize grep
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias fgrep='fgrep --color=auto'

# git
alias addup="git add -u"
alias addall="git add ."
alias commit="git commit -m"
alias ammend="git commit --amend"
alias commitfix="git commit --amend --no-edit"
alias pull="git pull origin"
alias push="git push origin"
alias branch="git branch"
alias checkout="git checkout"
alias clone="git clone"
alias stat="git status"
alias tag="git tag"
alias tagnew="git tag new"
alias diff="git diff HEAD"
alias glog="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=format:'%a, %b %y (%H:%M)'"
alias branchls="git branch -vva --format='%(HEAD) %(color:bold yellow)%(refname:lstrip=-2)%(color:reset):  %(color:green)%(authordate:format:%a, %b %y (%H:%M))%(color:reset) 
  %(color:yellow)└─╼%(color:reset) %(color:red)%(authorname)%(color:reset) - %(contents:subject) %(color:dim white)'"
