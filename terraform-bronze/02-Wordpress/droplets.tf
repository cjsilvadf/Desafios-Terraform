

# Create a web server
resource "digitalocean_droplet" "desafio02" {
  vpc_uuid = digitalocean_vpc.vpc_desafio_02.id
  image    = var.droplet_image
  name     = var.droplet_name
  region   = local.regions.new_york_1
  size     = local.sizes.nano
  ssh_keys = [data.digitalocean_ssh_key.ssh_key.id]
  user_data = <<EOF
  #cloud-config
  groups:
    - ubuntu: [root,sys]
    
  runcmd:
    - sudo apt-get -y update
    - sudo apt -y install apache2
    
#    - sudo apt -y install apt-transport-https ca-certificates curl software-properties-common net-tools
#    - curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#    - sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
#    - sudo apt -y update
#    - sudo apt-cache policy docker-ce && apt-get -y install docker-ce
#    - sudo usermod -aG docker lesha
  EOF
  }  

