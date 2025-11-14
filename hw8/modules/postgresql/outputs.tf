output "cluster_id" {
  description = "PostgreSQL cluster id"
  value       = yandex_mdb_postgresql_cluster.my_cluster.id
}

output "hosts" {
  description = "PostgreSQL hosts"
  value       = yandex_mdb_postgresql_cluster.my_cluster.host
}
