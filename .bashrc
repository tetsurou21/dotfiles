# .bashrc

##################################################
### variables
###

# editor pager
EDITOR=vi
PAGER=lv

# prompt
PS1="[\u@\h \W]\\$ "

export EDITOR PAGER PS1

MANPATH=/usr/share/man:/usr/local/share/man:/usr/X11/man
export MANPATH

# color
export CLICOLOR=1
export LSCOLORS=gxdxxcxdcxegedabagacad

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

##################################################
### aliases
###
# ls
alias ll='\ls -laFG'
alias la='\ls -aFG'
alias ls='\ls -FG'
alias sl=\ls
alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs

# inform
alias cp='\cp -i'
alias mv='\mv -i'
alias rm='\rm -i'

# perl tools
alias pmver="perl -le '\$m = shift; eval qq(require \$m) or die qq(module \"\$m\" is not installed\\n); print \$m->VERSION'"

##################################################
### software
###

# go
export GOROOT=$HOME/go
export GOOS=darwin
export GOARCH=amd64
export GOBIN=$HOME/bin

# screen
case "$TERM" in
  screen)
    PS1='\[\033k\033\\\]'$PS1
    ;;
esac
