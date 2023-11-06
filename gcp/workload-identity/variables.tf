variable "project" {
  type        = string
  default     = ""
  description = "Default input for some modules that require `project` input"
}
variable "region" {
  description = "GCP Region"
  type        = string
  default     = ""
}

variable "pool_id" {
  type        = string
  description = "Workload Identity Pool ID"
}

variable "pool_display_name" {
  type        = string
  description = "Workload Identity Pool display name"
  default     = null
}

variable "pool_description" {
  type        = string
  description = "Workload Identity Pool description"
  default     = "Workload Identity Pool managed by Terraform"
}

variable "provider_id" {
  type        = string
  description = "Workload Identity Pool Provider id"
}

variable "issuer_uri" {
  type        = string
  description = "Workload Identity Pool Issuer URL"
}

variable "provider_display_name" {
  type        = string
  description = "Workload Identity Pool Provider display name"
  default     = null
}

variable "provider_description" {
  type        = string
  description = "Workload Identity Pool Provider description"
  default     = "Workload Identity Pool Provider managed by Terraform"
}

variable "attribute_condition" {
  type        = string
  description = "Workload Identity Pool Provider attribute condition expression. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_condition)"
  default     = null
}

variable "attribute_mapping" {
  type        = map(any)
  description = "Workload Identity Pool Provider attribute mapping. [More info](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool_provider#attribute_mapping)"
  default = {
    "google.subject" = "assertion.sub"
  }
}

variable "allowed_audiences" {
  type        = list(string)
  description = "Workload Identity Pool Provider allowed audiences."
  default     = []
}

variable "disabled" {
  type        = bool
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/iam_workload_identity_pool#disabled"
  default     = false
}
