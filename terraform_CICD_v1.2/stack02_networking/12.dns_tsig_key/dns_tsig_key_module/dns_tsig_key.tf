resource "oci_dns_tsig_key" "this" {
    algorithm           = var.tsig_key_algorithm
    compartment_id      = var.compartment_ocid
    name                = var.tsig_key_name
    secret              = var.tsig_key_secret
    defined_tags        = var.project_tag.definedTags
    freeform_tags       = var.project_tag.freeformTags
}