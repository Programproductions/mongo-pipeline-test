resource "random_id" "bucket_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "backend" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "ASIA"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}

variable "project" {
  type        = string
  description = "ID Google project test"
  default     = "cybercorp-dev1"
}

variable "region" {
  type        = string
  description = "Region Google project"
  default     = "australia-southeast1"
}
