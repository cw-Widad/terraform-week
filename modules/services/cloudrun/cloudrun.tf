resource "google_cloud_run_service" "run_service" {
  name     = "${var.environment-prefix}-images-service-widad"
  project     = "cw-academy-sandbox-widad"
  location = var.target_region

  template {
    spec {
      containers {
        image = "gcr.io/google-samples/hello-app:1.0"

      }
      //service_account_name = module.service_account.service_account_email
    }
  }


}
module "service_account" {
  source = "./service_account"
}
resource "google_cloud_run_service_iam_member" "run_service_account" {
  service  = google_cloud_run_service.run_service.name
  location = google_cloud_run_service.run_service.location
  role     = "roles/run.invoker"
  //member   = "allUsers"
  member = module.service_account.service_account_member
}

