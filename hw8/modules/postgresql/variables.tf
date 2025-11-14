variable "project_name" {
  description = "Project name"
  type        = string
}

variable "postgresql_cluster" {
  description = "A postgresql cluster config"
  type = object({
    environment        = string
    version            = number
    resource_preset_id = string
    disk_size          = number
    disk_type_id       = string
  })
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}

variable "network_id" {
  description = "Network id"
  type        = any
}

variable "subnet_id" {
  description = "Subnet id"
  type        = any
}

variable "postgresql_user" {
  description = "A postgresql user data"
  type = object({
    name     = string
    password = string
  })
  sensitive = true
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}

