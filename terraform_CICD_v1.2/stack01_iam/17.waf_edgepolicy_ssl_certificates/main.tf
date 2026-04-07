
##############################
###  SSL  Certificates 
##############################

module "ssl_certificates" {
source                                           = "./certificates"
  compartment_ocid                               = local.compartment_ocid
  project_tag                                    = var.project_tag
  certificate_certificate_data                   = var.certificate_certificate_data
  certificate_private_key_data                   = var.certificate_private_key_data
  certificate_display_name                       = var.certificate_display_name
  certificate_is_trust_verification_disabled     = var.certificate_is_trust_verification_disabled
}