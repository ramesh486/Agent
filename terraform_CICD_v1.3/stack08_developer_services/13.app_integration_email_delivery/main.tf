#####################################
# Email Delivery
#####################################
module "email_delivery" {
  source                = "./email_module"
  region                = var.region
  tenancy_ocid          = var.tenancy_ocid
  compartment_ocid      = local.compartment_ocid
  sender_email_address  = var.sender_email_address
  email_domain_name     = var.email_domain_name
  dkim_selector         = var.dkim_selector
  project_tag           = var.project_tag    
}

