resource "oci_service_mesh_mesh" "test_mesh" {
    certificate_authorities {
        id             = var.mesh_certificate_authorities_ocid
    }
    compartment_id     = var.compartment_ocid
    display_name       = var.mesh_display_name
    mtls {
        minimum        = var.mesh_mtls_minimum

    }
     defined_tags        = var.project_tag.definedTags
     freeform_tags       = var.project_tag.freeformTags
}