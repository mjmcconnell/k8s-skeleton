variable "region" {
  default = ""
  description = "GCP region to host the network"
}

variable "name_prefix" {
  default = "us-central1"
  description = "Prefix used for naming all resources"
}

variable "ip_cidr_range" {
  default = "10.0.0.0/16"
  description = "Range for internal addresses that are owned by this subnetwork"
}
