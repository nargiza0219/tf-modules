terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }

  required_version = ">= 0.14"
}


resource "google_service_account" "default" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_container_cluster" "primary" {
  name               = var.cluster_name
  location           = var.cluster_location
  initial_node_count = var.initial_node_count

  node_config {
    disk_size_gb = var.disk_size_gb
  }

}




