output "subnet_id" {
  description = "Subnet id"
  value       = yandex_vpc_subnet.private.id
}

output "network_id" {
  description = "Network id"
  value       = yandex_vpc_network.this.id
}
