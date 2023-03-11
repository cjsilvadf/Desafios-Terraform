resource "digitalocean_vpc" "vpc_desafio_02" {
  name     = var.do_vpc_name
  region   = var.do_region
  ip_range = "10.117.17.0/20"
}