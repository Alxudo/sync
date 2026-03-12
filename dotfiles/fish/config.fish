if status is-interactive
    # Commands to run in interactive sessions can go here
end

#if uwsm check may-start && uwsm select; then
#	exec uwsm start default
#end

set -x EDITOR vim
set -x VISUAL vim

if test -n "$SSH_CONNECTION"
        set -x DISPLAY :1
end

set -x PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - | source
