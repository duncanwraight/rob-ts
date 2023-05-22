resource "google_container_cluster" "cluster" {
  name               = "gke-cluster-${var.environment_name}"
  location           = "us-central1"
  initial_node_count = var.initial_node_count

  network    = var.network_id
  subnetwork = var.subnetwork_id

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = var.cluster_ipv4_cidr_block
    services_ipv4_cidr_block = var.services_ipv4_cidr_block
  }
}
