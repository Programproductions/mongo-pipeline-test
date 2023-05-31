
terraform {
  backend "gcs" {
    bucket = "44331f8bb308c225-bucket-tfstate"
    prefix = "terraform/state"
  }
}


