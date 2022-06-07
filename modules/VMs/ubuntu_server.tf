resource "proxmox_vm_qemu" "test_vm" {
  onboot      = true
  name        = "test-vm"
  target_node = "SV2"
  vmid        = 103

  iso = "local:iso/ubuntu-22.04-live-server-amd64.iso"

  # basic VM settings here. agent refers to guest agent
  agent    = 1
  cores    = 2
  sockets  = 1
  cpu      = "host"
  memory   = 6048
  scsihw   = "virtio-scsi-pci"
  bootdisk = "scsi0"
  disk {
    slot     = 0
    size     = "9420M"
    type     = "scsi"
    storage  = "ceph-VM"
    iothread = 1
  }
  network {
    model = "virtio"
    bridge = "vmbr0"
  }
  boot = "order=ide2;scsi0"
}
#resource "proxmox_vm_qemu" "clone_vm" {
#  onboot      = true
#  name        = "clone-vm"
#  target_node = "pve"
#  vmid        = 104
#
#  clone = "Docker"
#
#  # basic VM settings here. agent refers to guest agent
#  agent    = 1
#  cores    = 2
#  sockets  = 1
#  cpu      = "host"
#  memory   = 6048
#  scsihw   = "virtio-scsi-pci"
#  bootdisk = "scsi0"
#  disk {
#    slot     = 0
#    size     = "9420M"
#    type     = "scsi"
#    storage  = "local-lvm"
#    iothread = 1
#  }
#  boot = "order=ide2;scsi0"
#}