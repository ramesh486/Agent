resource "oci_vault_secret" "secret" {
    compartment_id      = var.compartment_ocid
    secret_content {
        content_type    = var.secret_secret_content_content_type
        content         = var.secret_secret_content_content
    }
    secret_name         = var.secret_name
    description         = var.secret_description
    vault_id            = var.vault_ocid
    key_id              = var.key_ocid
    defined_tags       = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
}

