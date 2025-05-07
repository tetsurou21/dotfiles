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

# completion 
if [ -e "$HOME/.bash_completion.d" ]; then
  . "$HOME"/.bash_completion.d/*.bash
fi

# rust

# .bashrc
[ -r ~/.bashrc ] && . ~/.bashrc


export BASH_SILENCE_DEPRECATION_WARNING=1

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/local/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/local/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/local/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/local/google-cloud-sdk/completion.bash.inc"; fi

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# anyenv
eval "$(anyenv init -)"

# Setting PATH for Python 3.11
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH
. "$HOME/.cargo/env"
