resource "google_artifact_registry_repository" "default" {
  provider               = google-beta
  project                = var.project
  location               = var.location
  description            = var.description
  format                 = var.format
  labels                 = var.labels
  repository_id          = var.repository_id
  cleanup_policy_dry_run = var.cleanup_policy_dry_run

  dynamic "cleanup_policies" {
    for_each = var.cleanup_policies
    content {
      id     = cleanup_policies.value.id
      action = cleanup_policies.value.action

      dynamic "condition" {
        for_each = var.cleanup_policies[cleanup_policies.key].condition != null ? [cleanup_policies.value.condition] : []
        content {
          tag_state             = condition.value.tag_state
          tag_prefixes          = condition.value.tag_prefixes
          package_name_prefixes = condition.value.package_name_prefixes
          older_than            = condition.value.older_than
        }
      }

      dynamic "most_recent_versions" {
        for_each = var.cleanup_policies[cleanup_policies.key].most_recent_versions != null ? [cleanup_policies.value.most_recent_versions] : []
        content {
          package_name_prefixes = most_recent_versions.value.package_name_prefixes
          keep_count            = most_recent_versions.value.keep_count
        }
      }
    }
  }

}
