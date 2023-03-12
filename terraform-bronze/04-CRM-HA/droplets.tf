
# Create a web server
resource "digitalocean_droplet" "vm-front" {
  count    = var.do_count_frontend
  vpc_uuid = digitalocean_vpc.vpc_desafio.id
  image    = var.droplet_image
  name     = format("%s-%s", var.droplet_name, "${count.index + 1}")
  #name       = "FrontEnd${var.droplet_name}"
  region     = local.regions.new_york_1
  size       = local.sizes.nano
  monitoring = true
  tags       = [digitalocean_tag.foobar.id]
  ssh_keys   = [data.digitalocean_ssh_key.ssh_key.id]
}
#droplet_name
// Criando IP Dedicado/Flutuante e anexando ao Droplet 
resource "digitalocean_reserved_ip" "vm-01_desafio03" {
  region = local.regions.new_york_1
}

# Create vm
resource "digitalocean_droplet" "vm-backend" {
  count    = var.do_count_backend
  vpc_uuid = digitalocean_vpc.vpc_desafio.id
  image    = var.droplet_image
  name     = format("%s-%s", var.droplet_name_back, "${count.index + 1}")
  #name       = "BackEnd${var.droplet_name}"
  region     = local.regions.new_york_1
  size       = local.sizes.nano
  monitoring = true
  ssh_keys   = [data.digitalocean_ssh_key.ssh_key.id]
}
