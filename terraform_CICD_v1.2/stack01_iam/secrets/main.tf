module "secrets" {
  source                                 = "./secrets_module"
  compartment_ocid                       = local.compartment_ocid
  secret_secret_content_content_type     = var.secret_secret_content_content_type
  secret_secret_content_content          = var.secret_secret_content_content
  secret_name                            = var.secret_name
  secret_description                     = var.secret_description
  vault_ocid                             = local.vault_ocid
  key_ocid                               = local.key_ocid
  project_tag                            = var.project_tag
}

