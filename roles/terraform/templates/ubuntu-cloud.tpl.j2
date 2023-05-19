#cloud-config

#  Install stuff
packages:
 - ntp
 - ntpdate
 - curl

# Override ntp with chrony configuration on Ubuntu
ntp:
  enabled: true
  ntp_client: chrony  # Uses cloud-init default chrony configuration

# Configure ubuntu user security
users:
  - name: ubuntu
    sudo: [ "ALL=(ALL) NOPASSWD:ALL" ]
    ssh-authorized-keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHMX/bgx/CQ5TzLcRDhDAjKBfuCIaawE3YrzuXosbzRA ddaniels@fedora.thinkpad
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDDTmIFsTdrmJ+m8KODI+lCV9hmat4LppiNEgFF3Dk9P welcome@builder.lab.danielsson.us.com
  - name: root
    ssh-authorized-keys:
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHMX/bgx/CQ5TzLcRDhDAjKBfuCIaawE3YrzuXosbzRA ddaniels@fedora.thinkpad
      - ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDDTmIFsTdrmJ+m8KODI+lCV9hmat4LppiNEgFF3Dk9P welcome@builder.lab.danielsson.us.com

#  Change some default passwords
chpasswd:
  list: |
    root:ubuntu1
    ubuntu:ubuntu2
  expire: False

#  Write to a log file (useing variables set in terraform) and show the ip on the console.
runcmd:
  - date >/root/cloudinit.log
  - hostnamectl set-hostname ${HOSTNAME}
  - apt install -y vim git cockpit-system cockpit-networkmanager cockpit-tests cockpit-bridge cockpit cockpit-ws cockpit-dashboard cockpit-sosreport cockpit-packagekit cockpit-doc cockpit-storaged cockpit-pcp cockpit-389-ds >>/root/cloudinit.log
  - systemctl enable --now cockpit.service >>/root/cloudinit.log
  - echo "Done cloud-init" >>/root/cloudinit.log
  - ip a >/dev/tty1
