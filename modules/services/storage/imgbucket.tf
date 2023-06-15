resource "google_storage_bucket" "dev-images-bucket" {
  name          ="${var.environment-prefix}-images-bucket-widad"
  location      = "EUROPE-WEST1"

}