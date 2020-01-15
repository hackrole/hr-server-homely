# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

if  [ -s "${HOME}/.alias" ]; then
    source "${HOME}/.alias"
fi

export PIPENV_IGNORE_VIRTUALENVS=1
if [ -s "${HOME}/venv/bin/activate" ]; then
    source "${HOME}/venv/bin/activate"
fi

export env=dev
export dev_meta=http://10.23.244.211:8080
export PATH=$PATH:${HOME}/app/zsh/bin

#[ -f $HOME/app/zsh/bin/zsh ] && exec $HOME/app/zsh/bin/zsh -l
