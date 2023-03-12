
# Create a web server
resource "digitalocean_droplet" "vm-01_desafio03" {
  vpc_uuid = digitalocean_vpc.vpc_desafio_03.id
  image    = var.droplet_image
  name     = "FrontEnd${var.droplet_name}"
  region   = local.regions.new_york_1
  size     = local.sizes.nano
  monitoring = true
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  }  

// Criando IP Dedicado/Flutuante e anexando ao Droplet 
resource "digitalocean_reserved_ip" "vm-01_desafio03" {
  region = digitalocean_droplet.vm-01_desafio03.region
}
resource "digitalocean_reserved_ip_assignment" "vm-01_desafio03" {
  ip_address = digitalocean_reserved_ip.vm-01_desafio03.ip_address
  droplet_id = digitalocean_droplet.vm-01_desafio03.id
}


# Create a web server
resource "digitalocean_droplet" "vm-02_desafio03" {
  vpc_uuid = digitalocean_vpc.vpc_desafio_03.id
  image    = var.droplet_image
  name     = "BackEnd${var.droplet_name}"
  region   = local.regions.new_york_1
  size     = local.sizes.nano
  monitoring = true
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  }  
