module "private_endpoint" {
  source                                = "./private_endpoint_module" 
  tenancy_ocid                          = var.tenancy_ocid 
  compartment_ocid                      = local.app_compartment_ocid
  region                                = var.region
  subnet_ocid                           = local.subnet_ocid
  vcn_ocid                              = local.vcn_ocid
  private_endpoint_display_name         = var.private_endpoint_display_name
  private_endpoint_is_used_with_configuration_source_provider = var.private_endpoint_is_used_with_configuration_source_provider
  project_tag                           = var.project_tag
}