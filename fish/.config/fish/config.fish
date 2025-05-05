switch (uname)
case Linux
    fish_add_path /usr/local/go/bin $HOME/go/bin
    set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/tkey-ssh-agent/sock
case Darwin
    fish_add_path /opt/homebrew/bin
    set -x SSH_AUTH_SOCK /opt/homebrew/var/run/tkey-ssh-agent.sock
end
