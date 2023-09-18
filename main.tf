data "google_compute_default_service_account" "this" {
  project = local.project_id
  
}

resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = local.machine_type
  project      = local.project_id
  zone         = local.zone
  tags         = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.gcs_image
      size = local.boot_disk_size
      labels = {
        my_label = "debian"
      }
    }
  }

  #acess_congfig comentado tira o ip publico da vm
  network_interface {
    subnetwork = local.subnetwork

    # access_config {
    #   //Ephemeral public IP
    # }

  }

  service_account {
    email  = data.google_compute_default_service_account.this.email
    scopes = ["cloud-platform"]
  }
}