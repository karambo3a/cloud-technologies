packer {
  required_plugins {
    yandex = {
      version = "~> 1"
      source  = "github.com/hashicorp/yandex"
    }
    ansible = {
      version = "~> 1"
      source  = "github.com/hashicorp/ansible"
    }
  }
}

variable "YC_FOLDER_ID" {
  default = env("AWS_DEFAULT_REGION")
}

variable "YC_SUBNET_ID" {
  default = env("YC_SUBNET_ID")
}

source "yandex" "ubuntu-nginx" {
  folder_id           = var.YC_FOLDER_ID
  source_image_family = "ubuntu-2204-lts"
  ssh_username        = "ubuntu"
  use_ipv4_nat        = "true"
  image_description   = "my custom ubuntu with nginx"
  image_family        = "ubuntu-2204-lts"
  image_name          = "my-ubuntu-nginx"
  subnet_id           = var.YC_SUBNET_ID
  disk_type           = "network-ssd"
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.ubuntu-nginx"]

  provisioner "ansible" {
    playbook_file = "ansible/site.yaml"
  }
}
