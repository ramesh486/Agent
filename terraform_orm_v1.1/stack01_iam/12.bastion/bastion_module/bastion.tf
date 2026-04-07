resource "oci_bastion_bastion" "oci_bastion" {  
  bastion_type                 = var.bastion_type
  client_cidr_block_allow_list = var.client_cidr_block_allow_list
  compartment_id               = var.compartment_ocid
  max_session_ttl_in_seconds   = var.max_session_ttl_in_seconds
  name                         = var.bastion_name
  target_subnet_id             = var.target_subnet_ocid
}


