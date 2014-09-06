# .bash_profile
PATH=/opt/local/bin:$PATH
PATH=/opt/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# pyenv
if which pyenv > /dev/null; then 
  eval "$(pyenv init -)"
fi

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

# cabal
export PATH="$HOME/.cabal/bin:$PATH"

# plenv
eval "$(plenv init -)"

# # phpenv
# export PATH="$HOME/.phpenv/bin:$PATH"
# eval "$(phpenv init -)"

# completion 
if [ -e "$HOME/.bash_completion.d" ]; then
  . "$HOME"/.bash_completion.d/*.bash
fi

# .bashrc
[ -r ~/.bashrc ] && . ~/.bashrc

