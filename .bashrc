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
    # visible format is '[user@host:dir]$ '
    # screen title is user:dir or executing command
    # <ESC>k<ESC>\ means search command and set it to title
    # <ESC>\u:\W<ESC>\ means set user:dir to title
    # \[ ... \] means enclosed characters are not printed to screen logs
    PS1='[\u@\h:\W]\['$'\33'k$'\33''\\'$'\33'k'\u:\W'$'\33''\\\]\$ '
    ;;
esac
