variable "project_name" {
  description = "Project name"
  type        = string
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
}

variable "image_id" {
  description = "A boot disk image id"
  type        = string
}

variable "service_account_id" {
  description = "Service account"
  type        = any
}

variable "subnet_id" {
  description = "Subnet id"
  type        = any
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}
