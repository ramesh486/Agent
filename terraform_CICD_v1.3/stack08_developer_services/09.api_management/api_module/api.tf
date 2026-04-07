resource oci_apigateway_api this {
    compartment_id = var.compartment_ocid
    content        = var.api_content
    display_name   = var.api_display_name
    defined_tags   = var.project_tag.definedTags
    freeform_tags  = var.project_tag.freeformTags
   
}