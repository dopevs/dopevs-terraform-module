resource "google_iam_workload_identity_pool" "default" {
  workload_identity_pool_id = var.pool_id
  display_name              = var.pool_display_name
  description               = var.pool_description
  disabled                  = var.disabled
}

resource "google_iam_workload_identity_pool_provider" "default" {
  workload_identity_pool_id          = google_iam_workload_identity_pool.default.workload_identity_pool_id
  workload_identity_pool_provider_id = var.provider_id
  display_name                       = var.provider_display_name
  description                        = var.provider_description
  attribute_condition                = var.attribute_condition
  attribute_mapping                  = var.attribute_mapping
  oidc {
    allowed_audiences = var.allowed_audiences
    issuer_uri        = var.issuer_uri
  }
}
