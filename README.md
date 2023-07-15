# Lab build

stuff to install silverblue

```console
sudo rpm-ostree install cockpit cockpit-machines cockpit-pcp cockpit-networkmanager cockpit-ostree cockpit-podman cockpit-selinux cockpit-sosreport libvirt virt-manager vim steam xset
sudo systemctl enable cockpit-wc
sudo systemctl enable cockpit.socket
sudo -u gdm dbus-run-session gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
sudo xset s off # Has to be done through UI terminal
```

stuff for esxi # Has to be on X86_64 computer
download ovftool at [https://developer.vmware.com/web/tool/4.6.0/ovf-tool]

```console
curl https://vdc-download.vmware.com/vmwb-repository/dcr-public/a1454db2-e9e1-4ac8-ad10-22dea876cfba/fbcbc433-0a8e-4cdb-be80-c5512e2e4163/VMware-ovftool-4.6.0-21452615-lin.x86_64.zip >> VMware-ovftool.zip
scp VMware-ovftool-*.zip user@server:~
unzip VMware-ovftool-*.zip
sudo cp -r ovftool /usr/bin/
sudo chmod +x /usr/bin/ovftool/ovftool.bin
sudo chmod +x /usr/bin/ovftool/ovftool
mkdir ~/bin; ln -s /usr/bin/ovftool/ovftool ~/bin; sudo mkdir /root/bin; sudo ln -s /usr/bin/ovftool/ovftool /root/bin
sudo dnf install libnsl unzip

sudo dnf install -y dnf-plugins-core
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install terraform
```
