
## setting up pipewire
sudo xbps-install -Sy pipewire pipewire-devel
sudo mkdir -p /etc/pipewire/pipewire.conf.d/

## setting up configs
echo 'context.exec = [ { path = "/usr/bin/pipewire" args = "-c pipewire-pulse.conf" } ]' | sudo tee /etc/pipewire/pipewire.conf.d/20-pipewire-pulse.conf
echo 'context.exec = [ { path = "/usr/bin/wireplumber" args = "" } ]' | sudo tee /etc/pipewire/pipewire.conf.d/10-wireplumber.conf

# autostart

mkdir -p $HOME/.config/autostart/
AUTOSTARTDIR=$HOME/.config/autostart/
AUTOSTARTFILE=$AUTOSTARTDIR/pipewire.desktop
echo '[Desktop Entry]' > $HOME/.config/autostart/pipewire.desktop
echo 'Exec=/usr/bin/pipewire' > $AUTOSTARTFILE
echo 'Icon=application-x-executable' > $AUTOSTARTFILE
echo 'Name=pipewire' > $AUTOSTARTFILE
echo 'Type=Application' > $AUTOSTARTFILE
echo 'X-GNOME-Autostart-enabled=true' > $AUTOSTARTFILE
