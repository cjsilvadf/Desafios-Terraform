resource "digitalocean_loadbalancer" "public" {
  name     = var.do_loadbalance_name
  vpc_uuid = digitalocean_vpc.vpc_desafio.id
  region   = local.regions.new_york_1


  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }

  healthcheck {
    port     = 22
    protocol = "tcp"
  }

  droplet_ids = digitalocean_droplet.vm-front[*].id
}