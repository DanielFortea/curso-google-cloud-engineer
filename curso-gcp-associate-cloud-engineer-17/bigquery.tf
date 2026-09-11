resource "google_bigquery_dataset" "dataset" {
  dataset_id = "mi_dataset_reportes"
  project    = "curso-gcp-engineer"
  location   = "US"
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "resumen_ventas"
  schema = <<EOF
[
  { "name": "producto", "type": "STRING", "mode": "REQUIRED" },
  { "name": "cantidad", "type": "INTEGER", "mode": "NULLABLE" }
]
EOF
}