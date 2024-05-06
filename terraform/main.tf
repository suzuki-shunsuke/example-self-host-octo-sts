resource "google_kms_key_ring" "test-octo-sts" {
  name     = "test-octo-sts"
  project  = "test-octo-sts"
  location = "asia-northeast1"
}

resource "google_kms_crypto_key" "test-octo-sts-github-app-private-key" {
  name                       = "test-octo-sts-github-app-private-key"
  key_ring                   = google_kms_key_ring.test-octo-sts.id
  purpose                    = "ASYMMETRIC_SIGN"
  destroy_scheduled_duration = "2592000s"
  # version_template {
  #   # algorithm        = "EC_SIGN_P256_SHA256"
  #   algorithm        = "RSA_SIGN_PSS_3072_SHA256"
  #   protection_level = "SOFTWARE"
  # }
  # crypto_key_backend            = null
  # import_only                   = false
  # labels                        = {}
  # rotation_period               = null
  # skip_initial_version_creation = false
}

# This resoure has a bug, so you have to create an import job by gcloud for now.
# https://github.com/hashicorp/terraform-provider-google/issues/17466
# resource "google_kms_key_ring_import_job" "test-octo-sts-2" {
#   import_job_id = "test-octo-sts-2"
#   key_ring      = google_kms_key_ring.test-octo-sts.id
# 
#   # Possible values are: RSA_OAEP_3072_SHA1_AES_256, RSA_OAEP_4096_SHA1_AES_256
#   import_method = "RSA_OAEP_3072_SHA1_AES_256"
# 
#   protection_level = "SOFTWARE"
#   # lifecycle {
#   #   ignore_changes = [
#   #     import_method
#   #   ]
#   # }
# }

# I don't think we should manage this key version with Terraform.
# resource "google_kms_crypto_key_version" "test-octo-sts" {
#   crypto_key = google_kms_crypto_key.test-octo-sts-github-app-private-key.id
#   state      = "IMPORT_FAILED"
# }
