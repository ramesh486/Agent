
resource "oci_dataintegration_workspace" "test_workspace" {
	compartment_id              = var.compartment_ocid
	description                 = var.description
	display_name                = var.display_name #"Workspace 20230616_190543"
	is_private_network_enabled  = var.is_private_network_enabled#"true"
	defined_tags     		    = var.project_tag.definedTags
    freeform_tags 			    = var.project_tag.freeformTags
}
