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




resource "google_storage_bucket" "test" {
  name          = "delete-me-cyber-corp-600"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}
