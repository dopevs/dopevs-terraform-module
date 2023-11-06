output "projects" {
  value       = module.projects_iam.projects
  description = "Projects wich received bindings."
}

output "service_account_name" {
  value       = google_service_account.default.account_id
  description = "Service account name/id"
}
output "service_account_email" {
  value       = google_service_account.default.email
  description = "Service accout email"
}
output "service_account_id" {
  value       = google_service_account.default.id
  description = "Service account ID"
}
output "project_iam_roles" {
  value       = module.projects_iam.roles
  description = "Roles which are assigned to members."
}
output "project_iam_members" {
  value       = module.projects_iam.members
  description = "Members which are bound to projects."
}

output "service_account_iam_roles" {
  value       = module.service_accounts_iam.roles
  description = "Roles which are assigned to members."
}
output "service_account_iam_members" {
  value       = module.service_accounts_iam.members
  description = "Members which are bound to the Service Account."
}
