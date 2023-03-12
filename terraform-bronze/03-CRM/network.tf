resource "digitalocean_vpc" "vpc_desafio_03" {
  name     = var.do_vpc_name
  region   = local.regions.new_york_1
  ip_range = "10.118.0.0/20"
}