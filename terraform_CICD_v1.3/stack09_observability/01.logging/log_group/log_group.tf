
resource "oci_logging_log_group" "test_log_group" {
  #Required
  compartment_id = var.compartment_ocid
  display_name   = var.log_group_name

  #Optional
  # description = "description"
  # defined_tags = {
  #   "${var.tag_namespace1_name}.${var.tag2_name}" = var.defined_tags_value2
  # }
  # freeform_tags      = var.freeform_tags_value2
}

data "oci_logging_log_groups" "test_log_groups" {
  #Required
  compartment_id = var.compartment_ocid

  #Optional
  display_name                 = var.log_group_name
  is_compartment_id_in_subtree = "false"
}

