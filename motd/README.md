## Custom Message of the Day

Created with [lolcrab](https://github.com/mazznoer/lolcrab) and [figlet](https://github.com/cmatsuoka/figlet)

Inspired by https://github.com/yboetz/motd

To install (RHEL):
```
# Installing figlet and lolcrab
sudo dnf install epel-release
sudo dnf install figlet
sudo dnf install cargo
cargo install lolcrab --root /usr

# Installing custom MOTD
sudo mkdir /usr/lib/custom-motd
sudo install --owner=root --group=root --mode=744 ./status-motd.sh /usr/lib/custom-motd/
sudo install --owner=root --group=root --mode=644 ./system-status-motd.service /etc/systemd/system
install --owner=root --group=root --mode=644 ./every-five-min.timer /etc/systemd/system/

systemctl daemon-reload
systemctl enable --now system-status-motd.service
systemctl enable --now every-five-min.timer
```

![image](https://github.com/user-attachments/assets/ddb0eb8a-de33-4218-9eaf-6d20bcf8b482)
