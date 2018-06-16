variable "do_token" {}
variable "ssh_fingerprint" {}

provider "digitalocean" {
  token = "${var.do_token}"
}

resource "digitalocean_tag" "nginx2" {
    name = "nginx2"
}

resource "digitalocean_droplet" "nginx_server" {
    name = "nginx-server"
    image = "ubuntu-18-04-x64"
    size = "512mb"
    region = "lon1"
    ipv6 = true
    private_networking = false
    monitoring = true
    tags = [
        "${digitalocean_tag.nginx2.id}"
    ]
    ssh_keys = ["${digitalocean_ssh_key.default.fingerprint}"]
}

resource "digitalocean_ssh_key" "default" {
  name       = "craig@craig-macbook"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "digitalocean_domain" "examplecom" {
    name = "example289.com"
    ip_address = "${digitalocean_droplet.nginx_server.ipv4_address}"
}

resource "digitalocean_record" "examplecom" {
    name = "examplecom"
    type = "A"
    domain = "${digitalocean_domain.examplecom.name}"
    value = "${digitalocean_droplet.nginx_server.ipv4_address}"
}

resource "digitalocean_firewall" "webserver" {
    name = "webserver-firewall"
    droplet_ids = ["${digitalocean_droplet.nginx_server.id}"]

    inbound_rule = [
      {
        protocol = "tcp"
        port_range = "22"
      },
      {
        protocol = "tcp"
        port_range = "80"
      },
      {
        protocol = "tcp"
        port_range = "443"
      }
    ]

    outbound_rule = [
      {
        protocol = "tcp"
        port_range = "53"
      },
      {
        protocol = "udp"
        port_range = "53"
      }
    ]
}

resource "ansible_host" "example" {
    inventory_hostname = "example289.com"
    groups = ["web"]
    vars {
        ansible_user = "admin"
    }
}

resource "ansible_group" "web" {
  inventory_group_name = "web"
  children = ["foo", "bar", "baz"]
  vars {
    foo = "bar"
    bar = 2
  }
}
