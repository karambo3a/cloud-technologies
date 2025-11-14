resource "yandex_mdb_postgresql_cluster" "my_cluster" {
  name        = "${var.project_name}-cluster"
  environment = var.postgresql_cluster.environment
  network_id  = var.network_id

  config {
    version = var.postgresql_cluster.version
    resources {
      resource_preset_id = var.postgresql_cluster.resource_preset_id
      disk_type_id       = var.postgresql_cluster.disk_type_id
      disk_size          = var.postgresql_cluster.disk_size
    }
  }

  host {
    zone      = var.zone
    subnet_id = var.subnet_id
  }
}

resource "yandex_mdb_postgresql_database" "my_db" {
  cluster_id = yandex_mdb_postgresql_cluster.my_cluster.id
  name       = "${var.project_name}-db"
  owner      = yandex_mdb_postgresql_user.my_user.name
}

resource "yandex_mdb_postgresql_user" "my_user" {
  cluster_id = yandex_mdb_postgresql_cluster.my_cluster.id
  name       = var.postgresql_user.name
  password   = var.postgresql_user.password
}
