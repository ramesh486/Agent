resource "oci_artifacts_repository" "this" {
    compartment_id                  = var.compartment_ocid
    is_immutable                    = var.artifacts_repository_is_immutable
    repository_type                 = var.artifacts_repository_type
    defined_tags                    = var.project_tag.definedTags
    description                     = var.artifacts_repository_description
    display_name                    = var.artifacts_repository_display_name
    freeform_tags                   = var.project_tag.freeformTags
}