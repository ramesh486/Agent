resource "oci_core_public_ip" "generated_oci_core_public_ip"{
	compartment_id 		= var.compartment_ocid
	display_name	    = var.display_name
	lifetime 			= var.lifetime
	defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
}
