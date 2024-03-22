variable "service_account_id" {
  type    = string
}

variable "service_account_display_name" {
  type    = string
  default = "service_account_display_name"
}

variable "cluster_name" {
  type = string
}

variable "cluster_location" {
  type    = string
  default = "us-central1-c"
}

variable "initial_node_count" {
  type    = number
  default = 3
}

variable "disk_size_gb" {
  type    = number
  default = 60
}

variable "project_id" {
  type = string
}

variable "provider_location" {
  type    = string
  default = "us-central1"
}