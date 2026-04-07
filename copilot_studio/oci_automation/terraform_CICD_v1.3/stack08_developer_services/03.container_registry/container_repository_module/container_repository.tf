resource "oci_artifacts_container_repository" "this" {
    compartment_id  = var.compartment_ocid
    display_name    = var.container_repository_display_name
    is_public       = var.container_repository_is_public
    defined_tags    = var.project_tag.definedTags
    freeform_tags   = var.project_tag.freeformTags
    readme {
        content     = var.container_repository_readme_content
        format      = var.container_repository_readme_format
    }
}