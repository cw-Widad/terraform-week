terraform {
  backend "gcs" {
    bucket  = "terraform-state-widad"
  }
}
//
provider "google" {
  project     = "cw-academy-sandbox-widad"
  region      = "europe-west1"
}

module "gittest" {
  source = "git::git@github.com:cw-Widad/terraform-week.git"
  environment-prefix = var.environment-prefix
}
/*
module "images-bucket" {
  source = "./modules/services/storage"
  environment-prefix = var.environment-prefix
}



module "images-service" {
  source = "./modules/services/cloudrun"
  environment-prefix = var.environment-prefix

}

//module "service_account" {
 // source = "./modules/service_account"
//}
*/
