resource "google_container_cluster" "cluster" {
  name               = "gke-cluster-${var.environment_name}"
  location           = "us-central1"
  initial_node_count = var.initial_node_count

  network    = google_compute_network.custom.id
  subnetwork = google_compute_subnetwork.custom.id

  ip_allocation_policy {
    cluster_secondary_range_name  = "pod-ranges"
    services_secondary_range_name = google_compute_subnetwork.custom.secondary_ip_range.0.range_name
  }
}
