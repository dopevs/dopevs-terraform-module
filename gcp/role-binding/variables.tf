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


variable "projects" {
  type        = list(string)
  default     = []
  description = "Default input for some modules that require `projects` input"
}

variable "projects_iam" {
  type        = any
  description = "https://github.com/terraform-google-modules/terraform-google-iam/tree/v7.4.1/modules/projects_iam#inputs"
  default     = {}
}

variable "service_account_name" {
  type        = string
  description = "Service account name"
  default     = ""
}

variable "service_accounts_iam" {
  type        = any
  description = "https://github.com/terraform-google-modules/terraform-google-iam/tree/v7.4.1/modules/service_accounts_iam#inputs"
  default     = {}
}
