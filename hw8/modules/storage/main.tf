resource "yandex_storage_bucket" "this" {
  bucket     = "${var.project_name}-bucket-${random_string.bucket_suffix.result}"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}
