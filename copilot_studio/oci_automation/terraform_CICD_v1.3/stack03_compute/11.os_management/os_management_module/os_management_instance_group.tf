resource "oci_osmanagement_managed_instance_group" "test_managed_instance_group" {

    compartment_id  = var.compartment_ocid
    display_name    = var.managed_instance_group_display_name
    description     = var.managed_instance_group_description
    defined_tags    = var.project_tag.definedTags
    freeform_tags   = var.project_tag.freeformTags
}

