resource "google_service_account" "default" {
  account_id   = var.service_account_name
  display_name = var.service_account_name
  project      = var.project
}

module "projects_iam" {
  source  = "terraform-google-modules/iam/google//modules/projects_iam"
  version = "7.4.1"

  projects             = var.projects
  mode                 = lookup(var.projects_iam, "mode", "additive")
  bindings             = lookup(var.projects_iam, "bindings", {})
  conditional_bindings = lookup(var.projects_iam, "conditional_bindings", [])
  depends_on = [
    google_service_account.default
  ]
}

module "service_accounts_iam" {
  source  = "terraform-google-modules/iam/google//modules/service_accounts_iam"
  version = "7.4.1"

  project              = var.project
  service_accounts     = [google_service_account.default.email]
  mode                 = lookup(var.service_accounts_iam, "mode", "additive")
  bindings             = lookup(var.service_accounts_iam, "bindings", {})
  conditional_bindings = lookup(var.service_accounts_iam, "conditional_bindings", [])
  depends_on = [
    google_service_account.default,
    module.projects_iam
  ]
}
