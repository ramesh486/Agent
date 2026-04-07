resource "oci_osmanagement_software_source" "test_software_source" {
    
    arch_type       = var.software_source_arch_type
    compartment_id  = var.compartment_ocid
    display_name    = var.software_source_display_name
    defined_tags    = var.project_tag.definedTags
    freeform_tags   = var.project_tag.freeformTags
   
}