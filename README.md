# Lab build

stuff to install silverblue

```console
sudo rpm-ostree install cockpit cockpit-machines cockpit-pcp cockpit-networkmanager cockpit-ostree cockpit-podman cockpit-selinux cockpit-sosreport libvirt virt-manager vim steam
sudo systemctl enable cockpit-wc
sudo systemctl enable cockpit.socket
sudo -u gdm dbus-run-session gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
```
