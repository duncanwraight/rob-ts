variable "environment_name" {
  type = string
  description = "Environment identifier, e.g. dev or personal01"
}

variable "initial_node_count" {
  type = number
  default = 1
  description = "Number of nodes to provision with cluster"
}
