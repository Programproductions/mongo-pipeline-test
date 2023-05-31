


terraform {
  required_providers {

    google = {
      source  = "hashicorp/google"
      version = "4.24.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.region
}
