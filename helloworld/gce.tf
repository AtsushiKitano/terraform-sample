resource "google_compute_instance" "main" {
  name         = "bastion"
  machine_type = "f1-micro"
  zone         = "asia-northeast1-b"

  network_interface {
    subnetwork = google_compute_subnetwork.main.self_link
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

}
