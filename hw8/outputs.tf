output "postgresql_cluster_id" {
  description = "PostgreSQL cluster id"
  value       = module.postgresql.cluster_id
}

output "postgresql_hosts" {
  description = "PostgreSQL hosts"
  value       = module.postgresql.hosts
}
