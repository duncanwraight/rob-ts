# A "wrapper" module is just a module which calls other modules to deploy a combined set of resources
# Typically when using wrapper modules the target modules should be "dumb" - e.g. flexible, with lots of variables for configuration
# The wrapper module can then be opinionated; e.g. contain some variables but some "harcoded" parameters defining how this module
# is used

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
  # Let's "hardcode" this variable so it's consistent across every cluster created by the "mortgages" Stack
  initial_node_count = 1
}
