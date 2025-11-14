resource "yandex_compute_disk" "boot_disk" {
  name     = "${var.project_name}-boot-disk"
  zone     = var.zone
  image_id = var.image_id

  type = var.instance_resources.disk_type
  size = var.instance_resources.disk_size
}

resource "yandex_compute_instance" "this" {
  name                      = "${var.project_name}-vm"
  allow_stopping_for_update = var.instance_resources.allow_stopping_for_update
  platform_id               = var.instance_resources.platform_id
  zone                      = var.zone
  service_account_id        = var.service_account_id

  resources {
    cores  = var.instance_resources.cores
    memory = var.instance_resources.memory
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot_disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
  }
}
