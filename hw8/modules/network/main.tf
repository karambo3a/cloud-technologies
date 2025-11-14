resource "yandex_vpc_network" "this" {
  name = "${var.project_name}-private"
}

resource "yandex_vpc_subnet" "private" {
  name           = var.subnet_name
  zone           = var.zone
  v4_cidr_blocks = var.subnet_cidr
  network_id     = yandex_vpc_network.this.id
}
