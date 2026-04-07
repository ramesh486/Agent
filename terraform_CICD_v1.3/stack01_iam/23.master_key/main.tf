module "master_key" {
  source                    = "./key_module"
  compartment_ocid          = local.security_compartment_ocid
  project_tag               = var.project_tag
  key_display_name          = var.key_display_name
  key_shape_algorithm       = var.key_shape_algorithm
  key_shape_length          = var.key_shape_length
  key_management_endpoint   = var.key_management_endpoint
  key_protection_mode       = var.key_protection_mode
}
