resource "digitalocean_database_cluster" "postgres-desafio03" {
  name       = var.pg_db_cluster_name
  engine     = var.pg_db_cluster_engine
  version    = var.pg_db_cluster_version
  size       = var.pg_db_cluster_size
  region     = local.regions.new_york_1
  node_count = 1
}

resource "digitalocean_database_firewall" "database-fw" {
  cluster_id = digitalocean_database_cluster.postgres-desafio03.id

  rule {
    type  = "droplet"
    value = digitalocean_droplet.vm-backend[0].id

  }
}

