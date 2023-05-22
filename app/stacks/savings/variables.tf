variable "environment_name" {
  type        = string
  description = "Environment identifier, e.g. dev or personal01. Should be passed in from Stack tfvars file"
}

variable "initial_node_count" {
  type        = number
  default     = 1
  description = "Number of nodes to provision with cluster. Can be passed from Stack tfvars, or sent as a parameter when the Stack calls this module"
}
