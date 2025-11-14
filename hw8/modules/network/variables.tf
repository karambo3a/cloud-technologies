variable "project_name" {
  description = "Project name"
  type        = string
}

variable "zone" {
  description = "Yandex Cloud Zone for provisoned resources."
  type        = string
}

variable "subnet_name" {
  description = "A subnet name"
  type        = string
}

variable "subnet_cidr" {
  description = "A subnet CIDR block range"
  type        = list(string)
}

variable "folder_id" {
  description = "Yandex Cloud Folder ID where resources will be created."
  type        = string
  sensitive   = true
}
