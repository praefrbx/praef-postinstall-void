## xi and mirror
sudo xbps-install -y xtools xmirror

xi -y void-repo-nonfree void-repo-multilib void-repo-multilib-nonfree

## wayland and xorg
xi -y wayland xorg xorg-minimal

## bluetooth stuff 

xi -y bluez

sudo ln -s /etc/sv/bluetoothd /var/service

## useful tools
xi -y git curl wget zsh fish btop eza bat

