

# Create a web server
resource "digitalocean_droplet" "desafio01" {
  vpc_uuid = digitalocean_vpc.vpc_desafio_01.id
  image    = var.droplet_image
  name     = var.droplet_name
  region   = var.do_region
  size     = var.droplet_size
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
}
