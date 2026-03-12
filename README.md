# Every file has a different path and purpouse

- dir_tree.sh is a command for creating my personal dir structure, should be executed at ~/
- logind.conf has power button options, path is /etc/systemd/logind.conf
- alx_dns_servers.conf goes in /etc/systemd/resolved.conf.d/ and manages my dns, i use cloudflare and some google fallbacks. notice that systemd-resolved should be up and running.
- the modprobe.d directory should be contained in /etc/ and it manages kernel modules and crap like that, it blacklists my machine native wifi card cause its been problematic, as well as the default audio kernel modules cause they are also problematic when it comes to hdmi audio.
- dotfiles contains custom configs for hyprland, waybar, etc. there should be symlinks in ~/.config/ pointing to this dirs in dotfiles/
- grubconfig contains my grub theme. the "grub" file sould be in /etc/default/ and vimix/ should be in /usr/share/grub/themes/
- pkgs.txt and yaypkgs.txt are js the lists of intentionally downloaded packages, in case of having install my stuff and have it working with them dotfiles

## thats it, gang :)
