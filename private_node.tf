resource "linode_instance" "arp_k8s_worker_1" {
  label           = "ARP-K8s-Worker-1"
  region          = "id-cgk"
  type            = "g6-standard-2"  # Shared CPU 4GB plan
  image           = "linode/ubuntu22.04"
  root_pass       = random_password.root_password.result
  authorized_keys = [file("${path.module}/ssh_key.pub")]
  tags            = ["deployed by: arp-terraform"]

  interface {
    purpose   = "vpc"
    subnet_id = linode_vpc_subnet.kubeadm_lab.id
    ipv4 {
      vpc = "10.8.165.11"
    }
  }

  private_ip = true
}

resource "linode_instance" "arp_k8s_worker_2" {
  label           = "ARP-K8s-Worker-2"
  region          = "id-cgk"
  type            = "g6-standard-2"  # Shared CPU 4GB plan
  image           = "linode/ubuntu22.04"
  root_pass       = random_password.root_password.result
  authorized_keys = [file("${path.module}/ssh_key.pub")]
  tags            = ["deployed by: arp-terraform"]

  interface {
    purpose   = "vpc"
    subnet_id = linode_vpc_subnet.kubeadm_lab.id
    ipv4 {
      vpc = "10.8.165.12"
    }
  }

  private_ip = true
}
