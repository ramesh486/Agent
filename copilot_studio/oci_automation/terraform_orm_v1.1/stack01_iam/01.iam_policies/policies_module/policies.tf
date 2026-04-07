resource oci_identity_policy this {
  compartment_id    = var.compartment_ocid
  defined_tags      = var.definedTags
  description       = var.policy_description
  freeform_tags     = var.freeformTags
  name              = var.policy_name
  statements        = var.policy_statements
}