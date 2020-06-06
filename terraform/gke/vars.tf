variable "project_id" {}
variable "region" {}
variable "name_prefix" {}

variable "ip_cidr_range" {
  default = "10.0.0.0/16"
  description = "Range for internal addresses that are owned by this subnetwork"
}

variable "machine_type" {
  default = "g1-small"
}

