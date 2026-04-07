module test_blockchain_platform {
  #Required
  source                                 = "./Blockchain_module"
  compartment_ocid                       = local.compartment_ocid
  blockchain_platform_compute_shape      = var.blockchain_platform_compute_shape
  blockchain_platform_display_name       = var.blockchain_platform_display_name
  blockchain_platform_idcs_access_token  = var.blockchain_platform_idcs_access_token
  blockchain_platform_platform_role      = var.blockchain_platform_platform_role
  project_tag                            = var.project_tag
}