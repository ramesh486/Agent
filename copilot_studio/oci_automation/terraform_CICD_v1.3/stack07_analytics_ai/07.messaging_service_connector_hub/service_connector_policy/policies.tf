resource oci_identity_policy this {
  compartment_id    = var.service_connector_compartment_ocid
  defined_tags      = var.project_tag.definedTags
  freeform_tags     = var.project_tag.freeformTags
  description       = var.service_connector_policy_description
  name              = var.service_connector_policy_display_name
  statements        = var.policy_statements
}
