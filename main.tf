variable "digitalocean_token" {
}

provider "digitalocean" {
  token = var.digitalocean_token
}

resource "digitalocean_ssh_key" "craig" {
  name = "craig@craig-macbook"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "digitalocean_tag" "ghost" {
  name = "ghost"
}

resource "digitalocean_droplet" "panda" {
  image  = "ubuntu-18-04-x64"
  name   = "panda"
  region = "lon1"
  size   = "s-1vcpu-1gb"
  monitoring = true
  ssh_keys = [digitalocean_ssh_key.craig.fingerprint]
  tags = ["ghost"]
  provisioner "local-exec" {
    command = "ansible-playbook plays/panda.yml -u root -i ${digitalocean_droplet.panda.ipv4_address}"
  }
}
