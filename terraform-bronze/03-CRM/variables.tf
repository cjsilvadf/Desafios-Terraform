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
variable "do_fw_name" {
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