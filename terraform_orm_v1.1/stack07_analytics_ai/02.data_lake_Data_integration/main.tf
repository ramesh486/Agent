module test_workspace{
    source                      = "./Data_workspace_module"
	compartment_ocid            = var.compartment_ocid
	description                 = var.description
	display_name                = var.display_name 
	is_private_network_enabled  = var.is_private_network_enabled
}
