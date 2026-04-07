resource "oci_identity_domains_group" "group" {
    
    display_name = var.domain_group_display_name
    idcs_endpoint = var.identity_domain_idcs_endpoint
    schemas = [var.iam_group_schema]
    
    urnietfparamsscimschemasoracleidcsextension_oci_tags {
      

        dynamic "defined_tags" {
            for_each = var.project_tag.definedTags
            iterator = definedTags
            content {
                key = split(".", definedTags.key)[1]
                namespace = split(".", definedTags.key)[0]
                value = definedTags.value
            }
        }
       
        dynamic "freeform_tags" {
            for_each = var.project_tag.freeformTags
            iterator = freeformTags
            content {
                key = freeformTags.key 
                value = freeformTags.value
            }
        }
    }
}  
    

