variable "project_name" {
  description = "Project name"
  type        = string
  default     = "hw8"
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
  default     = "ru-central1-a"
}

variable "subnet_name" {
  description = "A subnet name"
  type        = string
  default     = "private-subnet"
}

variable "subnet_cidr" {
  description = "A subnet CIDR block range"
  type        = list(string)
  default     = ["192.168.10.0/24"]
}

variable "instance_resources" {
  description = "A virtial machine configuration"
  type = object({
    platform_id               = string
    cores                     = number
    memory                    = number
    disk_type                 = string
    disk_size                 = number
    allow_stopping_for_update = bool
  })
  default = {
    platform_id               = "standard-v3"
    cores                     = 2
    memory                    = 4
    disk_type                 = "network-ssd"
    disk_size                 = 15
    allow_stopping_for_update = true
  }
}

variable "image_id" {
  description = "Boot disk image id"
  type        = string
  default     = "fd8ba9d5mfvlncknt2kd"
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
  default = {
    environment        = "PRESTABLE"
    version            = 15
    resource_preset_id = "s2.micro"
    disk_size          = 16
    disk_type_id       = "network-ssd"
  }
}

variable "postgresql_user" {
  description = "A postgresql user data"
  type = object({
    name     = string
    password = string
  })
  sensitive = true
}
