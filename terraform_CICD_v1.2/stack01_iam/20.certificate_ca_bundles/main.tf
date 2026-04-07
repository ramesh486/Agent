module test_ca_bundle {
  source                                 = "./CA_Bundle_module"
  compartment_ocid                       = local.compartment_ocid
  region                                 = var.region
  ca_bundle_ca_bundle_pem                = var.ca_bundle_ca_bundle_pem 
  description                            = var.description
  ca_bundle_name                         = var.ca_bundle_name
  definedTags                            = var.project_tag.definedTags
  freeformTags                           = var.project_tag.freeformTags
}