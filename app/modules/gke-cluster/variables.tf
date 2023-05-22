variable "environment_name" {
  type        = string
  description = "Environment identifier, e.g. dev or personal01. Should be passed in from Stack tfvars file"
}

variable "initial_node_count" {
  type        = number
  default     = 1
  description = "Number of nodes to provision with cluster. Can be passed from Stack tfvars, or sent as a parameter when the Stack calls this module"
}

variable "network_id" {
  type        = string
  description = "Network ID to be passed in from networking module"
}

variable "subnetwork_id" {
  type        = string
  description = "Sub-network ID to be passed in from networking module"
}

variable "cluster_ipv4_cidr_block" {
  type        = string
  description = "IPv4 CIDR block for cluster pods to pass from networking module"
}

variable "services_ipv4_cidr_block" {
  type        = string
  description = "IPv4 CIDR block for services IPs to pass from networking module"
}
