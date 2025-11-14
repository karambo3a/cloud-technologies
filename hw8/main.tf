module "network" {
  source = "./modules/network"

  project_name = var.project_name
  zone         = var.zone
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
  folder_id    = var.folder_id
}

module "compute" {
  source = "./modules/compute"

  project_name       = var.project_name
  instance_resources = var.instance_resources
  zone               = var.zone
  image_id           = var.image_id
  service_account_id = module.iam.service_account_id
  subnet_id          = module.network.subnet_id
  folder_id          = var.folder_id
}

module "postgresql" {
  source = "./modules/postgreSQL"

  project_name       = var.project_name
  zone               = var.zone
  subnet_id          = module.network.subnet_id
  postgresql_cluster = var.postgresql_cluster
  postgresql_user    = var.postgresql_user
  folder_id          = var.folder_id
  network_id         = module.network.network_id
}

module "storage" {
  source = "./modules/storage"

  project_name = var.project_name
  access_key   = module.iam.access_key
  secret_key   = module.iam.secret_key
  zone         = var.zone
  folder_id    = var.folder_id
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
  folder_id    = var.folder_id
  zone         = var.zone
}
