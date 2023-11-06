variable "region" {
  description = "GCP Region"
  type        = string
  default     = ""
}
variable "project" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#project"
  type        = string
  default     = ""
}

variable "location" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#location"
  type        = string
  default     = ""
}

variable "labels" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#labels"
  type        = map(string)
  default     = {}
}

variable "format" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#format"
  type        = string
  default     = "DOCKER"
}

variable "description" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#description"
  type        = string
  default     = ""
}

variable "repository_id" {
  description = "https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/artifact_registry_repository#repository_id"
  type        = string
}

variable "cleanup_policy_dry_run" {
  description = "Whether to run cleanup policies in dry-run mode."
  type        = bool
  default     = false
}

variable "cleanup_policies" {
  description = "A list of cleanup policies."
  type = list(object({
    id     = string
    action = string
    condition = optional(object({
      tag_state             = string
      tag_prefixes          = list(string)
      package_name_prefixes = list(string)
      older_than            = string
      newer_than            = string

    }))
    most_recent_versions = optional(object({
      package_name_prefixes = list(string)
      keep_count            = number
    }))
  }))
  default = []
}
