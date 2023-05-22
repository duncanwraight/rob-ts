module "networking" {
  source = "../../modules/networking"
}

module "gke-cluster" {
  source = "../../modules/gke-cluster"

  network_id    = module.networking.main_network.id
  subnetwork_id = module.networking.main_subnetwork.id

  cluster_ipv4_cidr_block  = module.networking.main_subnetwork.secondary_ip_range.0.range_name
  services_ipv4_cidr_block = module.networking.main_subnetwork.secondary_ip_range.1.range_name

  environment_name = var.environment_name
  # In this Stack we'll use a value defined in each cluster's .tfvars file
  # In the absence of such a variable, its default will be used (see variables.tf)
  initial_node_count = var.initial_node_count
}
