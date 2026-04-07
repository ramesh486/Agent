resource "oci_identity_domains_group" "group" {
    
    display_name = var.group_name
    idcs_endpoint = var.identity_domain_idcs_endpoint
    schemas = ["urn:ietf:params:scim:schemas:core:2.0:Group"]
    
    urnietfparamsscimschemasoracleidcsextension_oci_tags {

       
        defined_tags {
           
            key = var.group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_key
            namespace = var.group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_namespace
            value = var.group_urnietfparamsscimschemasoracleidcsextension_oci_tags_defined_tags_value
        }
        freeform_tags {
           
            key = var.group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_key
            value = var.group_urnietfparamsscimschemasoracleidcsextension_oci_tags_freeform_tags_value
        }
        
    }
}  
    

