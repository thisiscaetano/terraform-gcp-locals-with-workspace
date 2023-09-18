locals {
  
  project_id = terraform.workspace == "prod" ? var.project_prod : var.project_qa
  subnetwork = terraform.workspace == "prod" ? var.subnetwork_prod : var.subnetwork_qa
  machine_type = terraform.workspace == "prod" ? var.machine_type_prod : var.machine_type_qa
  boot_disk_size = terraform.workspace == "prod" ? var.boot_disk_size_prod : var.boot_disk_size_qa

  region = "us-east1"
  zone   = "us-east1-b"

  labels = {
    created-by  = "paulo-junior-ext-at-carrefour-com"
    created-on  = "2023-09-17"
  }

}


