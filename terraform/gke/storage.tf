resource "google_storage_bucket" "bucket" {
  name          = "${var.name_prefix}bucket"
  force_destroy = true
}
