resource oci_identity_policy this {
  compartment_id    = var.service_connector_compartment_ocid
  defined_tags      = var.project_tag.definedTags
  description       = var.service_connector_policy_description
  freeform_tags     = var.project_tag.freeformTags
  name              = var.service_connector_policy_display_name
  statements        = var.policy_statements
}
