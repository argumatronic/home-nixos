source ~/.bash_profile

export PATH="$HOME/.local/bin:$PATH"
# don't need bash profiles; get rid of them and add necessary stuff here instead

function rebuild-os {
  sudo env \
    NIXOS_CONFIG="$HOME/nix/os/config.nix" \
    nixos-rebuild switch
}

