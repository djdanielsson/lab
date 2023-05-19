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

# Configure redhat user security
users:
  - name: welcome
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
    root:redhat
    welcome:redhat
  expire: false

#  Write to a log file (useing variables set in terraform) and show the ip on the console.
runcmd:
  - date >/root/cloudinit.log
  - hostnamectl set-hostname ${HOSTNAME}
  - dnf vim git install -y cockpit >>/root/cloudinit.log
  - systemctl enable --now cockpit >>/root/cloudinit.log
  - echo "Done cloud-init" >>/root/cloudinit.log
  - ip a >/dev/tty1
