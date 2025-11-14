variable "project_name" {
  description = "Project name"
  type        = string
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}
