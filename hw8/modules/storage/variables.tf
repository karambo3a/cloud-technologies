variable "project_name" {
  description = "Project name"
  type        = string
}

variable "access_key" {
  description = "Access key"
  type        = any
}

variable "secret_key" {
  description = "Secret key"
  type        = any
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}
