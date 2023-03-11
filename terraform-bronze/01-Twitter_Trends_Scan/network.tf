resource "digitalocean_vpc" "vpc_desafio_01" {
  name     = var.do_vpc_name
  region   = var.do_region
  ip_range = "10.116.16.0/20"
}