


resource "oci_logging_log_saved_search" "test_log_saved_search" {
  #Required
  compartment_id = var.compartment_ocid
  name           = var.test_log_saved_search_name
  query          = "exampleQuery"

  #Optional
  # defined_tags = {
  #   "${var.tag_namespace1_name}.${var.tag1_name}" = var.log_group_defined_tags_value
  # }
  # description = "description"

  # freeform_tags = var.log_saved_search_freeform_tags
}

data "oci_logging_log_saved_searches" "test_log_saved_searches" {
  #Required
  compartment_id = var.compartment_ocid

  #Optional
  name           = var.test_log_saved_search_name
  log_saved_search_id = oci_logging_log_saved_search.test_log_saved_search.id
}