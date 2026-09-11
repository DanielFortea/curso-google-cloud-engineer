resource "google_storage_bucket" "auto-expire" {
  name          = "mi-bucket-unico-curso-gcp-engineer-123" # Cambia esto, debe ser único global
  project       = "curso-gcp-engineer"
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