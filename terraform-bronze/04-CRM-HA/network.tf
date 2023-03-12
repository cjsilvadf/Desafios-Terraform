resource "digitalocean_project" "terraform_project" {
  name        = var.do_project_name
  environment = "Development"
  resources   = digitalocean_droplet.vm-front[*].urn
}
resource "digitalocean_vpc" "vpc_desafio" {
  name     = var.do_vpc_name
  region   = local.regions.new_york_1
  ip_range = "10.119.0.0/20"
}