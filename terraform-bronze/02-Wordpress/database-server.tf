resource "digitalocean_database_cluster" "mysql-wordpress" {
  name       = "wordpress-mysql-cluster"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
}
resource "digitalocean_database_db" "database-wordpress" {
  cluster_id = digitalocean_database_cluster.mysql-wordpress.id
  name       = "wordpress"
}

resource "digitalocean_database_firewall" "desafio02-db-fw" {
  cluster_id = digitalocean_database_cluster.mysql-wordpress.id

  rule {
    type  = "droplet"
    value = digitalocean_droplet.desafio02.id
  }
}