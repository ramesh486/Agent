#####################
## Common Variables
#####################

variable "tenancy_ocid" { }

variable "monitoring_compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name"
 }

variable "monitoring_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable region {
    type        = string
    default     = ""
    description = "Region"
}

########### identity variables ###########

variable "log_group_defined_tags_value1" {
  default     = "value2"
  type        = string
  description = "Log group defined tags value1"
}

variable "log_group_freeform_tags" {
  default     = "Finance"
  type        = string
  description = "Log group freeform tags"
}

variable "tag_namespace_description1" {
  default     = "Just a test"
  type        = string
  description = "Tag namespace description"
}

variable "tag_namespace_name" {
  default     = "log_tag_namespace1"
  type        = string
  description = "Tag namespace name"
}

########### log  Variables ############


variable "log_configuration_source_category" {
  type    = map
  default = {
    write       = "write"
    read        = "read"
    description = "Log config source category"
  }
}

variable "log_configuration_source_parameters" {
  default     = "parameters"
  type        = string
  description = "Log config source parameters"
}

variable "log_configuration_source_resource" {
  default     = "srishti-bucket"
  type        = string
  description = "Log config source resource"
}

variable "log_configuration_source_service" {
  default     = "objectstorage"
  type        = string
  description = "Log config source service"
}

variable "log_configuration_source_source_type" {
  default     = "OCISERVICE"
  type        = string
  description = "Log config source type"
}

variable "defined_tags_value1" {
  default     = "tf-value"
  type        = string
  description = "Defined tags value1"
}

variable "freeform_tags_value1" {
  default     = "Finance log"
  type        = string
  description = "Freeform tag value1"

}


variable "log_log_type" {
  type      = map 

  default   = {
    service = "SERVICE"
    custom  = "CUSTOM"
  }
  description = "log type"
}

variable "log_source_resource" {
  default     = "srishti-bucket"
  type        = string
  description = "Log source resource"
}

variable "log_source_service" {
  default     = "objectstorage"
  type        = string
  description = "Log source service"
}

variable "test_log_name" {
  default     = "log_exampleLog1"
  type        = string
  description = "Test log name"
}

########### log_saved_search  Variables ############

variable "log_saved_search_freeform_tags" {
  default        = "Finance"
  type           = string
  description    = "Saved Search freeform tags"
}
variable "log_defined_tags_value2" {
  default     = "log-value"
  type        = string
  description = "Log Defined Tag value2"
}
variable "log_group_defined_tags_value" {
  default     = "log-value-group"
  type        = string
  description = "Log Group Defined Tags Value"
}

variable "test_log_saved_search_name" {
  default     = "log_exampleLogSavedSearch1"
  type        = string
  description = "Log Saved Search Name"
  
}

########### log_agent_configuration  Variables ############



variable "unified_agent_config_defined_tags_value" {
  default     = "value"
  type        = string
  description = "Agent config defined tags value"
}

variable "unified_agent_config_description" {
  default     = "description2"
  type        = string
  description = "Agent config description"
}

variable "unified_agent_config_display_name" {
  default     = "config_name"
  type        = string
  description = "Agent config display name"
}

variable "unified_agent_config_freeform_tags" {
  default     = { Department = "Finance log" }
  type        = map 
  description = "Agent config freeform tags"
}

variable "unified_agent_config_group_association_group_list" {
  default     = [""]
  type        = list
  description = "Agent config association group list"
}

variable "unified_agent_config_service_config_config_type" {
  default     = "LOGGING"
  type        = string
  description = "Agent config type"
  
}

variable "unified_agent_config_is_compartment_id_in_subtree" {
  default     = false
  type        = bool
  description = "Agent config compartment id in subtree"
}

variable "unified_agent_config_is_enabled" {
  default     = true
  type        = bool
  description = "Agent config is enabled"
}

variable "unified_agent_config_service_config_sources_channels" {
  default     = "Security"
  type        = string
  description = "Agent config source channels"
}

variable "unified_agent_config_service_config_sources_name" {
  default     = "name"
  type        = string
  description = "Agent config sources name"
}

variable "unified_agent_config_service_config_sources_parser_delimiter" {
  default     = "delimiter"
  type        = string
  description = "Agent config parser delimiter"
}

variable "unified_agent_config_service_config_sources_parser_expression" {
  default     = "expression"
  type        = string
  description = "Agent config parser expression"
}

variable "unified_agent_config_service_config_sources_parser_field_time_key" {
  default     = "fieldTimeKey"
  type        = string
  description = "Agent config parser time key"
}

variable "unified_agent_config_service_config_sources_parser_format" {
  default     = []
  type        = list
  description = "Agent config parser format"
}

variable "unified_agent_config_service_config_sources_parser_format_firstline" {
  default     = "formatFirstline"
  type        = string
  description = "Agent config parser format firstline"
}

variable "unified_agent_config_service_config_sources_parser_grok_failure_key" {
  default     = "grokFailureKey"
  type        = string
  description = "Agent config parser grok failure key"
}

variable "unified_agent_config_service_config_sources_parser_grok_name_key" {
  default     = "grokNameKey"
  type        = string
  description = "Agent config grok name key"
}

variable "unified_agent_config_service_config_sources_parser_is_estimate_current_event" {
  default     = false
  type        = bool
  description = "Agent config estimate current event"
}

variable "unified_agent_config_service_config_sources_parser_is_keep_time_key" {
  default     = false
  type        = bool
  description = "Agent config parser keep time key"
}

variable "unified_agent_config_service_config_sources_parser_is_null_empty_string" {
  default     = false
  type        = bool
  description = "Agent config parser null empty string"
}

variable "unified_agent_config_service_config_sources_parser_is_support_colonless_ident" {
  default     = false
  type        = bool
  description = "Agent config support colonless ident"
}

variable "unified_agent_config_service_config_sources_parser_is_with_priority" {
  default     = false
  type        = bool
  description = "Agent config parser is with priority"
}

variable "unified_agent_config_service_config_sources_parser_keys" {
  default     = []
  type        = list
  description = "Agent config parser keys"
}

variable "unified_agent_config_service_config_sources_parser_message_format" {
  default     = "RFC3164"
  type        = string
  description = "Agent parser message format"
}

variable "unified_agent_config_service_config_sources_parser_message_key" {
  default     = "messageKey"
  type        = string
  description = "Agent parser message key"
}

variable "unified_agent_config_service_config_sources_parser_multi_line_start_regexp" {
  default     = "multiLineStartRegexp"
  type        = string
  description = "Agent config parser multiline start regexp "
}

variable "unified_agent_config_service_config_sources_parser_null_value_pattern" {
  default     = "nullValuePattern"
  type        = string
  description = "Agent config parser naull value pattern"
}

variable "unified_agent_config_service_config_sources_parser_parser_type" {
  default     = "AUDITD"
  type        = string
  description = "Agent config parser type"
}
variable "unified_agent_config_service_config_sources_parser_patterns_field_time_format" {
  default     = "fieldTimeFormat"
  type        = string
  description = "Agent config parser patterns time format"
}

variable "unified_agent_config_service_config_sources_parser_patterns_field_time_key" {
  default     = "fieldTimeKey"
  type        = string
  description = "Agent config feild time key"
}

variable "unified_agent_config_service_config_sources_parser_patterns_field_time_zone" {
  default     = "fieldTimeZone"
  type        = string
  description = "Agent config time zone"
}

variable "unified_agent_config_service_config_sources_parser_patterns_name" {
  default     = "name"
  type        = string
  description = "Agent config parser patterns name"
}

variable "unified_agent_config_service_config_sources_parser_patterns_pattern" {
  default     = "pattern"
  type        = string
  description = "Agent config parser patterns pattern"
}

variable "unified_agent_config_service_config_sources_parser_rfc5424time_format" {
  default     = "rfc5424TimeFormat"
  type        = string
  description = "Agent config parser rfc5424timeformat"
}

variable "unified_agent_config_service_config_sources_parser_syslog_parser_type" {
  default     = "STRING"
  type        = string
  description = "Agent parser syslog parser type"
}

variable "unified_agent_config_service_config_sources_parser_time_format" {
  default     = "timeFormat"
  type        = string
  description = "Agent config parser time format"
}

variable "unified_agent_config_service_config_sources_parser_time_type" {
  default     = "FLOAT"
  type        = string
  description = "Agent config parser time type"
}

variable "unified_agent_config_service_config_sources_parser_timeout_in_milliseconds" {
  default     = 10
  type        = number
  description = "Agent config parser timeout in milliseconds"

}

variable "unified_agent_config_service_config_sources_parser_types" {
  default     = "types"
  type        = string
  description = "Agent config parser types"
}

variable "unified_agent_config_service_config_sources_paths" {
  default     = []
  type        = list
  description = "Agent config sources paths"
}

variable "unified_agent_config_service_config_sources_source_type" {
  default     = "LOG_TAIL"
  type        = string
  description = "Agent config source type"
}

variable "unified_agent_config_state" {
  default     = "ACTIVE"
  type        = string
  description = "Agent config state"
}

variable "log_group_defined_tags_value3" {
  default     = "value2"
  type        = string
  description = "Log group defined tags value3"
}

########### log_group Variables ############

variable "tag_namespace_description" {
  default     = "Just a test"
  type        = string
  description = "Tag namespace description"
}

variable "tag_namespace_name1" {
  default     = "log_tag_namespace2"
  type        = string
  description = "Tag namespace name1"
}
variable "defined_tags_value2" {
  default     = "log-value"
  type        = string
  description = "Defined tags value2"
}

variable "freeform_tags_value2" {
  default     = "Finance log"
  type        = string
  description = "Freeform tags value2"
}
variable "log_group_name" {
  default     = "log_exampleLogGroup2"
  type        = string
  description = "Log group name"
}

########### log_rule Variables ############

variable "defined_tags_value3" {
  default     = "defined_tags_value"
  type        = string
  description = "Defined tags value3"
}

