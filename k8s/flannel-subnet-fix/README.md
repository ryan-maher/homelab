## Service to generate subnet.env file on boot

Whenever the control plane node reboots, the flannel pod complains about a missing file `/run/flannel/subnet.env`. This service creates that file on boot.


To install:
```
sudo mkdir /usr/lib/flannel-subnet-fix
sudo install --owner=root --group=root --mode=744 ./flannel-subnet-fix.sh /usr/lib/flannel-subnet-fix
sudo install --owner=root --group=root --mode=644 ./flannel-subnet-fix.service /etc/systemd/system

systemctl daemon-reload
systemctl enable --now flannel-subnet-fix.service
```
