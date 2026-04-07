#####################
## Identity Module
#####################


module "identity" {
  source                               = "./identity"
  compartment_ocid                     = local.monitoring_compartment_ocid
  log_group_defined_tags_value1        = var.log_group_defined_tags_value1
  log_group_freeform_tags              = var.log_group_freeform_tags
  tag_namespace_description1           = var.tag_namespace_description1
  tag_namespace_name                   = var.tag_namespace_name
  
}

#####################
## Log Group Module
#####################

module "log_group" {
  source                               = "./log_group"
  compartment_ocid                     = local.monitoring_compartment_ocid
  tag_namespace_description            = var.tag_namespace_description
  tag_namespace_name1                  = var.tag_namespace_name1
  defined_tags_value2                  = var.defined_tags_value2
  freeform_tags_value2                 = var.freeform_tags_value2
  log_group_name                       = var.log_group_name
  
}

###############
## Log Module
###############

module "log" {
  source                                = "./log"
  test_log_group_id                     = module.log_group.test_log_group_id
  log_configuration_source_resource     = var.log_configuration_source_resource
  log_configuration_source_service      = var.log_configuration_source_service
  log_configuration_source_source_type  = var.log_configuration_source_source_type
  defined_tags_value1                   = var.defined_tags_value1
  freeform_tags_value1                  = var.freeform_tags_value1
  log_log_type                          = var.log_log_type
  log_source_resource                   = var.log_source_resource
  log_source_service                    = var.log_source_service
  test_log_name                         = var.test_log_name
  log_configuration_source_parameters   = var.log_configuration_source_parameters
  log_configuration_source_category     = var.log_configuration_source_category
  
}

##########################
## Log Saved Search Module
##########################

module "log_saved_search" {
  source                                = "./log_saved_search"
  compartment_ocid                      = local.monitoring_compartment_ocid
  log_group_defined_tags_value          = var.log_group_defined_tags_value
  test_log_saved_search_name            = var.test_log_saved_search_name
  log_defined_tags_value2               = var.log_defined_tags_value2
  log_saved_search_freeform_tags        = var.log_saved_search_freeform_tags
  
}

################################
## Log Agent Configuration Module
#################################

 
module "log_agent_configuration" {
  source                                                                           = "./log_agent_configuration"
  compartment_ocid                                                                 = local.monitoring_compartment_ocid
  test_log_id                                                                      = module.log.test_log_id
  test_log_group_id                                                                = module.log_group.test_log_group_id
  unified_agent_config_defined_tags_value                                          = var.unified_agent_config_defined_tags_value
  unified_agent_config_description                                                 = var.unified_agent_config_description
  unified_agent_config_display_name                                               = var.unified_agent_config_display_name
  unified_agent_config_freeform_tags                                               = var.unified_agent_config_freeform_tags
  unified_agent_config_group_association_group_list                                = var.unified_agent_config_group_association_group_list
  unified_agent_config_is_compartment_id_in_subtree                                = var.unified_agent_config_is_compartment_id_in_subtree
  unified_agent_config_is_enabled                                                  = var.unified_agent_config_is_enabled
  unified_agent_config_service_config_config_type                                  = var.unified_agent_config_service_config_config_type
  unified_agent_config_service_config_sources_channels                             = var.unified_agent_config_service_config_sources_channels
  unified_agent_config_service_config_sources_name                                 = var.unified_agent_config_service_config_sources_name
  unified_agent_config_service_config_sources_parser_delimiter                     = var.unified_agent_config_service_config_sources_parser_delimiter
  unified_agent_config_service_config_sources_parser_expression                    = var.unified_agent_config_service_config_sources_parser_expression
  unified_agent_config_service_config_sources_parser_field_time_key                = var.unified_agent_config_service_config_sources_parser_field_time_key
  unified_agent_config_service_config_sources_parser_format                        = var.unified_agent_config_service_config_sources_parser_format
  unified_agent_config_service_config_sources_parser_format_firstline              = var.unified_agent_config_service_config_sources_parser_format_firstline
  unified_agent_config_service_config_sources_parser_grok_failure_key              = var.unified_agent_config_service_config_sources_parser_grok_failure_key
  unified_agent_config_service_config_sources_parser_grok_name_key                 = var.unified_agent_config_service_config_sources_parser_grok_name_key
  unified_agent_config_service_config_sources_parser_is_estimate_current_event     = var.unified_agent_config_service_config_sources_parser_is_estimate_current_event
  unified_agent_config_service_config_sources_parser_is_keep_time_key              = var.unified_agent_config_service_config_sources_parser_is_keep_time_key
  unified_agent_config_service_config_sources_parser_is_with_priority              = var.unified_agent_config_service_config_sources_parser_is_with_priority
  unified_agent_config_service_config_sources_parser_keys                          = var.unified_agent_config_service_config_sources_parser_keys
  unified_agent_config_service_config_sources_parser_message_format                = var.unified_agent_config_service_config_sources_parser_message_format
  unified_agent_config_service_config_sources_parser_message_key                   = var.unified_agent_config_service_config_sources_parser_message_key
  unified_agent_config_service_config_sources_parser_multi_line_start_regexp       = var.unified_agent_config_service_config_sources_parser_multi_line_start_regexp
  unified_agent_config_service_config_sources_parser_null_value_pattern            = var.unified_agent_config_service_config_sources_parser_null_value_pattern
  unified_agent_config_service_config_sources_parser_parser_type                   = var.unified_agent_config_service_config_sources_parser_parser_type
  unified_agent_config_service_config_sources_parser_patterns_field_time_format    = var.unified_agent_config_service_config_sources_parser_patterns_field_time_format
  unified_agent_config_service_config_sources_parser_patterns_field_time_key       = var.unified_agent_config_service_config_sources_parser_patterns_field_time_key
  unified_agent_config_service_config_sources_parser_patterns_field_time_zone      = var.unified_agent_config_service_config_sources_parser_patterns_field_time_zone
  unified_agent_config_service_config_sources_parser_patterns_name                 = var.unified_agent_config_service_config_sources_parser_patterns_name
  unified_agent_config_service_config_sources_parser_patterns_pattern              = var.unified_agent_config_service_config_sources_parser_patterns_pattern
  unified_agent_config_service_config_sources_parser_rfc5424time_format            = var.unified_agent_config_service_config_sources_parser_rfc5424time_format
  unified_agent_config_service_config_sources_parser_syslog_parser_type            = var.unified_agent_config_service_config_sources_parser_syslog_parser_type
  unified_agent_config_service_config_sources_parser_time_format                   = var.unified_agent_config_service_config_sources_parser_time_format
  unified_agent_config_service_config_sources_parser_time_type                     = var.unified_agent_config_service_config_sources_parser_time_type
  unified_agent_config_service_config_sources_parser_timeout_in_milliseconds       = var.unified_agent_config_service_config_sources_parser_timeout_in_milliseconds
  unified_agent_config_service_config_sources_parser_types                         = var.unified_agent_config_service_config_sources_parser_types
  unified_agent_config_service_config_sources_paths                                = var.unified_agent_config_service_config_sources_paths
  unified_agent_config_service_config_sources_source_type                          = var.unified_agent_config_service_config_sources_source_type
  unified_agent_config_state                                                       = var.unified_agent_config_state
  log_group_defined_tags_value3                                                   = var.log_group_defined_tags_value3
  unified_agent_config_service_config_sources_parser_is_support_colonless_ident    = var.unified_agent_config_service_config_sources_parser_is_support_colonless_ident
  unified_agent_config_service_config_sources_parser_is_null_empty_string          = var.unified_agent_config_service_config_sources_parser_is_null_empty_string

}
 