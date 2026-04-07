resource "oci_core_compute_cluster" "test_compute_cluster" {
    availability_domain = var.availability_domain
    compartment_id      = var.compartment_ocid
	display_name        = var.compute_cluster_display_name
    defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags

}

