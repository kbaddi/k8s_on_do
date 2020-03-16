resource "digitalocean_ssh_key" "default" {
  name       = "Terraform Example"
  public_key = file("/home/kiran/.ssh/id_rsa.pub")
}


resource "digitalocean_droplet" "kubemaster" {
  image  = var.image
  name   = "kubemaster"
  region = var.region
  size   = var.master_node_size
  private_networking = "true"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

        

resource "digitalocean_droplet" "kubeworker" {
  count  = var.worker_nodes
  image  = var.image
  name   = "kubeworker-${count.index}"
  region = var.region
  size   = var.worker_node_size
  private_networking = "true"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint] 
}