variable "do_token" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_ssh_key" "default" {
  name       = "${var.do_token}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "digitalocean_tag" "minetest" {
    name = "minetest"
}

resource "ansible_group" "minetest" {
  inventory_group_name = "minetest"
}

resource "digitalocean_tag" "discourse" {
    name = "discourse"
}

resource "ansible_group" "discourse" {
  inventory_group_name = "discourse"
}

resource "digitalocean_droplet" "minetest1" {
    name = "minetest1.davison.io"
    image = "ubuntu-18-04-x64"
    size = "512mb"
    region = "fra1"
    ipv6 = true
    private_networking = true
    monitoring = true
    tags = [
        "${digitalocean_tag.minetest.id}"
    ]
    ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
    volume_ids = ["8e5ebeb1-a42a-11e6-a9b4-000f53306cc0"]
    #volume_ids = ["minetest-srv1-prd"]
    #volume_ids = ["${digitalocean_volume.minetest1-world.id}"]
    connection {
        type     = "ssh"
        user     = "root"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    provisioner "remote-exec" {
        inline = [
            "sleep 30",
            "apt install -y python",
        ]
    }
}

resource "ansible_host" "minetest1" {
    inventory_hostname = "minetest1.davison.io"
    groups = ["minetest"]
}

resource "digitalocean_droplet" "eurodiscover" {
    name = "eurodiscover.davison.io"
    image = "ubuntu-18-04-x64"
    size = "512mb"
    region = "lon1"
    ipv6 = true
    private_networking = true
    monitoring = true
    tags = [
        "${digitalocean_tag.discourse.id}"
    ]
    ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
    connection {
        type     = "ssh"
        user     = "root"
        private_key = "${file("~/.ssh/id_rsa")}"
    }
    provisioner "remote-exec" {
        inline = [
            "sleep 30",
            "apt install -y python",
        ]
    }
}

resource "ansible_host" "eurodiscover" {
    inventory_hostname = "eurodiscover.davison.io"
    groups = ["discourse"]
}
