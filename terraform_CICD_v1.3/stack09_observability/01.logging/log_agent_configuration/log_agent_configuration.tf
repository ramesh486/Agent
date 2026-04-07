resource "oci_logging_unified_agent_configuration" "test_unified_agent_configuration" {
  #Required
  compartment_id = var.compartment_ocid
  is_enabled     = var.unified_agent_config_is_enabled
  description    = var.unified_agent_config_description
  display_name                = var.unified_agent_config_display_name
  service_configuration {
    #Required
    configuration_type = var.unified_agent_config_service_config_config_type
   
    #Required field destination for service_configuration
    destination {
      #Required field for destination
      log_object_id = var.test_log_id
    }
    sources {
      #Required
      source_type = var.unified_agent_config_service_config_sources_source_type

      #Optional
      # channels for windows only
      # channels = var.unified_agent_configuration_service_configuration_sources_channels
      name     = var.unified_agent_config_service_config_sources_name
      parser {
        parser_type = "NONE"
      }
      paths = ["/var/log/*"]
    }
  }

  #Optional
  # defined_tags = {
  #   "${var.tag_namespace1_name}.${var.tag1_name}" = var.log_group_defined_tags_value3
  # }
  # description   = var.unified_agent_config_description
  # display_name  = var.unified_agent_config_display_name
  # freeform_tags = var.unified_agent_config_freeform_tags
  # group_association {

  #   #Optional
  #   group_list = ["ocid1.dynamicgroup.oc1..aaaaaaaatqbpurg4jtr57dthka4lbykvsqajjmynecixwgsfgu2z36wf4kgq"]
  # }
}

data "oci_logging_unified_agent_configurations" "test_unified_agent_configurations" {
  #Required
  compartment_id = var.compartment_ocid

  #Optional
  display_name                 = var.unified_agent_config_display_name
  group_id                     = var.test_log_group_id
  is_compartment_id_in_subtree = var.unified_agent_config_is_compartment_id_in_subtree
  log_id                       = var.test_log_id
  state                        = var.unified_agent_config_state
}
