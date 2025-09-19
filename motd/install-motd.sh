#!/bin/bash

# Install cargo for lolcrab color
sudo dnf install cargo -y
sudo cargo install lolcrab --root /usr

# Install motd script and service to update motd
sudo mkdir /usr/lib/custom-motd
sudo install --owner=root --group=root --mode=744 ./status-motd.sh /usr/lib/custom-motd/
sudo install --owner=root --group=root --mode=644 ./system-status-motd.service /etc/systemd/system
install --owner=root --group=root --mode=644 ./every-five-min.timer /etc/systemd/system/
systemctl daemon-reload
systemctl enable --now system-status-motd.service
systemctl enable --now every-five-min.timer
