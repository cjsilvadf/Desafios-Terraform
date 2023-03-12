resource "digitalocean_vpc" "vpc_desafio_02" {
  name     = var.do_vpc_name
  region   = local.regions.new_york_1
  ip_range = "10.117.0.0/20"
}