resource oci_apigateway_certificate  this  {
    
    certificate    = var.certificate_certificate
    compartment_id = var.compartment_ocid
    private_key    = var.certificate_private_key
    display_name   = var.certificate_display_name
    defined_tags   = var.project_tag.definedTags
    freeform_tags  = var.project_tag.freeformTags
   

}