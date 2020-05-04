terraform {
  backend "gcs" {
    bucket = "k8s_skel_terraform_state"
  }
}
