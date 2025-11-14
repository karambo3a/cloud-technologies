output "access_key" {
  description = "Access key for storage"
  value       = yandex_iam_service_account_static_access_key.this.access_key
}

output "secret_key" {
  description = "Secret key for storage"
  value       = yandex_iam_service_account_static_access_key.this.secret_key
}

output "service_account_id" {
  description = "Service account id"
  value       = yandex_iam_service_account.bucket.id
}
