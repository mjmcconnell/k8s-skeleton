# https://www.terraform.io/docs/providers/google/r/compute_network.html
# https://www.terraform.io/docs/providers/google/r/compute_subnetwork.html
# https://www.terraform.io/docs/providers/google/r/compute_router.html
# https://www.terraform.io/docs/providers/google/r/compute_router_nat.html

# resource "google_compute_network" "primary" {
#   name                    = "${var.name_prefix}-primary-network"
#   auto_create_subnetworks = false
# }

# resource "google_compute_subnetwork" "primary" {
#   name          = "${var.name_prefix}-primary-subnetwork"
#   ip_cidr_range = var.ip_cidr_range
#   region        = var.region
#   network       = google_compute_network.primary.self_link
# }

# resource "google_compute_router" "primary" {
#   name    = "${var.name_prefix}-primary-router"
#   region  = google_compute_subnetwork.primary.region
#   network = google_compute_network.primary.self_link
# }

# resource "google_compute_router_nat" "primary" {
#   name                               = "${var.name_prefix}-primary-nat"
#   router                             = google_compute_router.primary.name
#   region                             = google_compute_router.primary.region
#   nat_ip_allocate_option             = "AUTO_ONLY"
#   source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"

#   log_config {
#     enable = true
#     filter = "ERRORS_ONLY"
#   }
# }
