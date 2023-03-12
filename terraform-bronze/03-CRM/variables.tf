variable "do_token" {
  type = string
}
variable "do_vpc_name" {
  type = string
}

variable "droplet_image" {
  type = string
}
variable "droplet_name" {
  type = string
}
variable "do_fw_name_front" {
  type = string
}
variable "do_fw_name_back" {
  type = string
}
variable "do_project_name" {
  type        = string
  description = "(optional) describe your variable"
}
variable "environment" {
  type        = string
  description = "(optional) describe your variable"
}
variable "purpose" {
  type        = string
  description = "(optional) describe your variable"
}

variable "description" {
  type        = string
  description = "(optional) describe your variable"
}
#
variable "pg_db_cluster_name" {
  type = string
}
variable "pg_db_cluster_engine" {
  type = string
}
variable "pg_db_cluster_version" {
  type = string
}
variable "pg_db_cluster_size" {
  type = string
}
variable "pg_db_cluster_node_count" {
  type = string
}