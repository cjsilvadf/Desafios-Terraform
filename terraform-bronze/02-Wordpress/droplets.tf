
# Create a web server
resource "digitalocean_droplet" "desafio02" {
  vpc_uuid = digitalocean_vpc.vpc_desafio_02.id
  image    = var.droplet_image
  name     = var.droplet_name
  region   = local.regions.new_york_1
  size     = local.sizes.nano
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  }  

// Criando IP Dedicado/Flutuante e anexando ao Droplet 
resource "digitalocean_reserved_ip" "desafio02" {
  region = digitalocean_droplet.desafio02.region
}
resource "digitalocean_reserved_ip_assignment" "desafio02" {
  ip_address = digitalocean_reserved_ip.desafio02.ip_address
  droplet_id = digitalocean_droplet.desafio02.id
}