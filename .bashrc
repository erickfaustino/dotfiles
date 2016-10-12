export NVM_DIR="/Users/ericksson/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH=/Users/ericksson/.local/bin:$PATH
source $(which virtualenvwrapper_lazy.sh)

eval $(thefuck --alias)
# bash-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi

alias psql='/Applications/pgAdmin3.app/Contents/SharedSupport/psql'
alias brew='/Users/ericksson/usr/local/bin/brew'
PATH=$PATH:/Users/ericksson/usr/local/bin
alias ls="ls -GFlash" 

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
           PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
   fi
