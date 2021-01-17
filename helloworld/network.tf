resource "google_compute_network" "main" {
  name                    = "sample"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"

  mtu                             = 1460
  delete_default_routes_on_create = false
}

resource "google_compute_subnetwork" "main" {
  name          = "bastion"
  ip_cidr_range = "192.168.0.0/29"
  network       = google_compute_network.main.self_link
  region        = "asia-northeast1"
}
