terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone      = var.zone
  folder_id = var.folder_id
}

provider "random" {
}
