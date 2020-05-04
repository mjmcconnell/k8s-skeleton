variable "region" {
  default = "europe-west1"
  description = "GCP region to host resources"
}

variable "name_prefix" {
  default = "k8s-skel-"
  description = "Prefix used for naming all resources"
}

variable "ip_cidr_range" {
  default = "10.0.0.0/16"
  description = "Range for internal addresses that are owned by this subnetwork"
}

variable "machine_type" {
  default = "g1-small"
}

