output "pool_id" {
  value       = google_iam_workload_identity_pool.default.id
  description = "an identifier for the resource with format projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}"
}

output "state" {
  value       = google_iam_workload_identity_pool.default.state
  description = "The state of the pool."
}

output "pool_name" {
  value       = google_iam_workload_identity_pool.default.name
  description = "The resource name of the pool as projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}."
}

output "provider_id" {
  value       = google_iam_workload_identity_pool_provider.default.id
  description = "an identifier for the resource with format projects/{{project}}/locations/global/workloadIdentityPools/{{workload_identity_pool_id}}/providers/{{workload_identity_pool_provider_id}}"
}

output "provider_name" {
  value       = google_iam_workload_identity_pool_provider.default.name
  description = "The resource name of the provider as projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/providers/{workload_identity_pool_provider_id}"
}
