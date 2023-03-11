resource "digitalocean_firewall" "desafio_02" {
  name = var.do_fw_name

  droplet_ids = [digitalocean_droplet.desafio02.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["239.13.117.114"]
  }
  inbound_rule {
    protocol         = "tcp"
    port_range       = "53"
    source_addresses = ["239.13.117.114"]
  }
  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["239.13.117.114"]
  }
  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["239.13.117.114"]
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "53"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

}