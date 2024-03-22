provider "google" {
  #   credentials = file("path/to/service-account-key.json") 
  project = your-project-id
  region  = us-central1 
}


module "gke_cluster" {
  source = "/Users/nargizarysbek/Desktop/Repos/tf-modules/gke/gke.tf"
  service_account_id           = "gke-service-account"
  service_account_display_name = "Gke Service Account"
  cluster_name                 = "naris-gke-cluster"
  cluster_location             = "us-central1-c"
  project_id                   = "your-project-id"

}



