module test_workspace{
    source                      = "./data_workspace_module"
	compartment_ocid            = local.compartment_ocid
	description                 = var.description
	display_name                = var.display_name 
	is_private_network_enabled  = var.is_private_network_enabled
	project_tag           = var.project_tag

}
