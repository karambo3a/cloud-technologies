terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone      = var.zone
  folder_id = var.folder_id
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}
