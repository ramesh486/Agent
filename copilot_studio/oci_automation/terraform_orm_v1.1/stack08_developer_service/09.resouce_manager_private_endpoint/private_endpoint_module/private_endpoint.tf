

### Creates a private_endpoint ####

resource "oci_resourcemanager_private_endpoint" "private_endpoint" {
   
    compartment_id                 = var.compartment_ocid
    display_name                   = var.private_endpoint_display_name
    subnet_id                      = var.subnet_ocid
    vcn_id                         = var.vcn_ocid
    defined_tags                   = var.project_tag.definedTags
    freeform_tags                  = var.project_tag.freeformTags
    is_used_with_configuration_source_provider = var.private_endpoint_is_used_with_configuration_source_provider
   
  }
  
 


