sudo xbps-install -Sy pipewire pipewire-devel

sudo mkdir -p /etc/pipewire/pipewire.conf.d/

echo "context.exec = [ { path = "/usr/bin/pipewire" args = "-c pipewire-pulse.conf" } ]" | sudo tee /etc/pipewire/pipewire.conf.d/20-pipewire-pulse.conf

echo "context.exec = [ { path = "/usr/bin/wireplumber" args = "" } ]" | sudo tee /etc/pipewire/pipewire.conf.d/10-wireplumber.conf
