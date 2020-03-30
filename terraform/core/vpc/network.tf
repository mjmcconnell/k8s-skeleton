# https://www.terraform.io/docs/providers/google/r/compute_network.html
# https://www.terraform.io/docs/providers/google/r/compute_subnetwork.html

resource "google_compute_network" "primary" {
  name                    = "${var.name_prefix}-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "primary" {
  name          = "${var.name_prefix}-subnetwork"
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.primary.self_link
}
