# .bashrc

##################################################
### variables
###

# editor pager
EDITOR=vi
PAGER='lv -c'

# prompt
PS1="[\u@\h \W]\\$ "

export EDITOR PAGER PS1

MANPATH=/usr/share/man:/usr/local/share/man:/usr/X11/man
export MANPATH

# color
export CLICOLOR=1
export LSCOLORS=gxdxxcxdcxegedabagacad

export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home`

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

# phpbrew
if [ -f "$HOME/.phpbrew/bashrc" ]; then
  source "$HOME/.phpbrew/bashrc"
fi

# screen
case "$TERM" in
  screen)
    PS1='\[\033k\033\\\]'$PS1
    ;;
esac

# golang
export GOPATH="$HOME/.go"
export GOROOT=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

# git
source /usr/local/etc/bash_completion.d/git-completion.bash
