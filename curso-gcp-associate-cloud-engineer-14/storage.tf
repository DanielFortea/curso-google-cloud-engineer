resource "google_storage_bucket" "auto-expire" {
  name          = "mi-bucket-unico-gcp-cloud-engineer-curso" # Cambia esto, debe ser único global
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 30
    }
    action {
      type = "Delete"
    }
  }
}