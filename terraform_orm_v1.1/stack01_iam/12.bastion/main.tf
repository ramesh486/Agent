
module "bastion" {
  source = "./bastion_module"
 
  tenancy_ocid                 = var.tenancy_ocid
  bastion_type                 = var.bastion_type
  client_cidr_block_allow_list = var.client_cidr_block_allow_list
  compartment_ocid             = local.compartment_ocid
  max_session_ttl_in_seconds   = var.max_session_ttl_in_seconds
  bastion_name                 = var.bastion_name
  target_subnet_ocid             = local.target_subnet_ocid
}

