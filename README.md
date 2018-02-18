# home-nixos
my nixOS home directory

I've installed NixOS on three machines (two ThinkPads and one Dell) so far. I was frustrated for a long time after the first time I did it because I had no idea what I was doing and didn't know how to get it configured to a usable state, and I find Nix-related topics to be difficult to find answers for without plowing through many pages of the manual. 

Now I use this setup to rapidly configure any new NixOS installs. I follow the install instructions from Chris Martin (see: https://chris-martin.org/2015/installing-nixos) and usually have no problems. 

NixOS installs a default configuration in /etc/nixos/configuration.nix and a hardware config file at /etc/nixos/hardware-configuration.nix. I've never had to touch my hardware-config and it's not version-controlled. 

For some time I was copying the text of /etc/nixos/configuration.nix into a file called dolores.nix to version control it but often I'd forget to copy new changes as I made them, so I decided to follow Chris Martin's lead again and change my settings so that when I rebuild my OS, the file it reads the configuration from is the same one I version control (no more forgetting to copy and paste!). 

You can see my normal (fairly plain) NixOS configuration now in /nix/os/dolores.nix. 

To change the settings so that it reads the dolores.nix file as the configuration on a rebuild, instead of the /etc/ config file, I added a function to my .bashrc, setting the NIXOS_CONFIG environment variable. There is a symlink in the /nix/os directory called config.nix that points to dolores.nix. (On another machine called dorian, there's a config file called dorian.nix and a symlink called config.nix that points to dorian.nix, so that my .bashrc can, on either machine, set the NIXOS_CONFIG variable to "config.nix" and it will point to the right config for that machine, dorian.nix).
