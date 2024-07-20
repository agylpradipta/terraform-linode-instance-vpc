resource "linode_vpc" "arp_kubeadm_network" {
  label       = "ARP-kubeadm-network-01"
  region      = "id-cgk"
  description = "For kubeadm purpose"
}

resource "linode_vpc_subnet" "kubeadm_lab" {
  vpc_id = linode_vpc.arp_kubeadm_network.id
  label  = "kubeadm-lab"
  ipv4   = "10.8.165.0/24"
}
