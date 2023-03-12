########
# VM-01
########
output "vm-01_droplet_public_ip" {
  value = digitalocean_droplet.vm-front[*].ipv4_address
}
output "vm-01_droplet_private_ip" {
  value = digitalocean_droplet.vm-front[*].ipv4_address_private
}
########
# VM-02
########
output "vm-02_droplet_public_ip" {
  value = digitalocean_droplet.vm-front[*].ipv4_address
}
output "vm-02_droplet_private_ip" {
  value = digitalocean_droplet.vm-backend[*].ipv4_address_private
}
