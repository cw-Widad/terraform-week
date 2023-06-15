resource "google_service_account" "cloudrun_service_account" {
  account_id   = "terraform-cloudrun-widad"
  display_name = "Service Account"
}

