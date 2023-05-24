module "full_cluster_deployment" {
  source = "../../modules/wrapper-module"

  environment_name = var.environment_name
}
