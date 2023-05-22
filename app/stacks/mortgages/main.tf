module "gke-cluster" {
  source = "../../modules/gke-cluster"

  environment_name = var.environment_name
  initial_node_count = 1
}
