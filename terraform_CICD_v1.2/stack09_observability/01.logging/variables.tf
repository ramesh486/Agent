
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

variable "region" {
  default = ""
}

########### identity variables ###########

variable "log_group_defined_tags_value1" {
  default     = "value2"
  type        = string
  description = "log group defined tags value1"
}

variable "log_group_freeform_tags" {
  default     = "Finance"
  type        = string
  description = "log group freeform tags"
}

variable "tag_namespace_description1" {
  default     = "Just a test"
  type        = string
  description = "tag namespace description"
}

variable "tag_namespace_name" {
  default     = "log_tag_namespace1"
  type        = string
  description = "tag namespace name"
}

########### log ############


variable "log_configuration_source_category" {
  type    = map
  default = {
    write       = "write"
    read        = "read"
    description = "log config source category"
  }
}

variable "log_configuration_source_parameters" {
  default     = "parameters"
  type        = string
  description = "log config source parameters"
}

variable "log_configuration_source_resource" {
  default     = "srishti-bucket"
  type        = string
  description = "log config source resource"
}

variable "log_configuration_source_service" {
  default     = "objectstorage"
  type        = string
  description = "log config source service"
}

variable "log_configuration_source_source_type" {
  default     = "OCISERVICE"
  type        = string
  description = "log config source type"
}

variable "defined_tags_value1" {
  default     = "tf-value"
  type        = string
  description = "defined tags value1"
}

variable "freeform_tags_value1" {
  default     = "Finance log"
  type        = string
  description = "freeform tag value1"

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
  description = "log source resource"
}

variable "log_source_service" {
  default     = "objectstorage"
  type        = string
  description = "log source service"
}

variable "test_log_name" {
  default     = "log_exampleLog1"
  type        = string
  description = "test log name"
}


########### log_saved_search ############

variable "log_saved_search_freeform_tags" {
  default        = "Finance"
  type           = string
  description    = "saved search freeform tags"
}
variable "log_defined_tags_value2" {
  default     = "log-value"
  type        = string
  description = "log defined tag value2"
}
variable "log_group_defined_tags_value" {
  default     = "log-value-group"
  type        = string
  description = "log group defined tags value"
}

variable "test_log_saved_search_name" {
  default     = "log_exampleLogSavedSearch1"
  type        = string
  description = "log saved search name"
  
}

########### log_agent_configuration ############



variable "unified_agent_config_defined_tags_value" {
  default     = "value"
  type        = string
  description = "agent config defined tags value"
}

variable "unified_agent_config_description" {
  default     = "description2"
  type        = string
  description = "agent config description"
}

variable "unified_agent_config_display_name" {
  default     = "config_name"
  type        = string
  description = "agent config display name"
}

variable "unified_agent_config_freeform_tags" {
  default     = { Department = "Finance log" }
  type        = map 
  description = "agent config freeform tags"
}

variable "unified_agent_config_group_association_group_list" {
  default     = [""]
  type        = list
  description = "agent config association group list"
}

variable "unified_agent_config_service_config_config_type" {
  default     = "LOGGING"
  type        = string
  description = "agent config type"
  
}

variable "unified_agent_config_is_compartment_id_in_subtree" {
  default     = false
  type        = bool
  description = "agent config compartment id in subtree"
}

variable "unified_agent_config_is_enabled" {
  default     = true
  type        = bool
  description = "agent config is enabled"
}

variable "unified_agent_config_service_config_sources_channels" {
  default     = "Security"
  type        = string
  description = "agent config source channels"
}

variable "unified_agent_config_service_config_sources_name" {
  default     = "name"
  type        = string
  description = "agent config sources name"
}

variable "unified_agent_config_service_config_sources_parser_delimiter" {
  default     = "delimiter"
  type        = string
  description = "agent config parser delimiter"
}

variable "unified_agent_config_service_config_sources_parser_expression" {
  default     = "expression"
  type        = string
  description = "agent config parser expression"
}

variable "unified_agent_config_service_config_sources_parser_field_time_key" {
  default     = "fieldTimeKey"
  type        = string
  description = "agent config parser time key"
}

variable "unified_agent_config_service_config_sources_parser_format" {
  default     = []
  type        = list
  description = "agent config parser format"
}

variable "unified_agent_config_service_config_sources_parser_format_firstline" {
  default     = "formatFirstline"
  type        = string
  description = "agent config parser format firstline"
}

variable "unified_agent_config_service_config_sources_parser_grok_failure_key" {
  default     = "grokFailureKey"
  type        = string
  description = "agent config parser grok failure key"
}

variable "unified_agent_config_service_config_sources_parser_grok_name_key" {
  default     = "grokNameKey"
  type        = string
  description = "agent config grok name key"
}

variable "unified_agent_config_service_config_sources_parser_is_estimate_current_event" {
  default     = false
  type        = bool
  description = "agent config estimate current event"
}

variable "unified_agent_config_service_config_sources_parser_is_keep_time_key" {
  default     = false
  type        = bool
  description = "agent config parser keep time key"
}

variable "unified_agent_config_service_config_sources_parser_is_null_empty_string" {
  default     = false
  type        = bool
  description = "agent config parser null empty string"
}

variable "unified_agent_config_service_config_sources_parser_is_support_colonless_ident" {
  default     = false
  type        = bool
  description = "agent config support colonless ident"
}

variable "unified_agent_config_service_config_sources_parser_is_with_priority" {
  default     = false
  type        = bool
  description = "agent config parser is with priority"
}

variable "unified_agent_config_service_config_sources_parser_keys" {
  default     = []
  type        = list
  description = "agent config parser keys"
}

variable "unified_agent_config_service_config_sources_parser_message_format" {
  default     = "RFC3164"
  type        = string
  description = "agent parser message format"
}

variable "unified_agent_config_service_config_sources_parser_message_key" {
  default     = "messageKey"
  type        = string
  description = "agent parser message key"
}

variable "unified_agent_config_service_config_sources_parser_multi_line_start_regexp" {
  default     = "multiLineStartRegexp"
  type        = string
  description = "agent config parser multiline start regexp "
}

variable "unified_agent_config_service_config_sources_parser_null_value_pattern" {
  default     = "nullValuePattern"
  type        = string
  description = "agent config parser naull value pattern"
}

variable "unified_agent_config_service_config_sources_parser_parser_type" {
  default     = "AUDITD"
  type        = string
  description = "agent config parser type"
}
variable "unified_agent_config_service_config_sources_parser_patterns_field_time_format" {
  default     = "fieldTimeFormat"
  type        = string
  description = "agent config parser patterns time format"
}

variable "unified_agent_config_service_config_sources_parser_patterns_field_time_key" {
  default     = "fieldTimeKey"
  type        = string
  description = "agent config feild time key"
}

variable "unified_agent_config_service_config_sources_parser_patterns_field_time_zone" {
  default     = "fieldTimeZone"
  type        = string
  description = "agent config time zone"
}

variable "unified_agent_config_service_config_sources_parser_patterns_name" {
  default     = "name"
  type        = string
  description = "agent config parser patterns name"
}

variable "unified_agent_config_service_config_sources_parser_patterns_pattern" {
  default     = "pattern"
  type        = string
  description = "agent config parser patterns pattern"
}

variable "unified_agent_config_service_config_sources_parser_rfc5424time_format" {
  default     = "rfc5424TimeFormat"
  type        = string
  description = "agent config parser rfc5424timeformat"
}

variable "unified_agent_config_service_config_sources_parser_syslog_parser_type" {
  default     = "STRING"
  type        = string
  description = "agent parser syslog parser type"
}

variable "unified_agent_config_service_config_sources_parser_time_format" {
  default     = "timeFormat"
  type        = string
  description = "agent config parser time format"
}

variable "unified_agent_config_service_config_sources_parser_time_type" {
  default     = "FLOAT"
  type        = string
  description = "agent config parser time type"
}

variable "unified_agent_config_service_config_sources_parser_timeout_in_milliseconds" {
  default     = 10
  type        = number
  description = "agent config parser timeout in milliseconds"

}

variable "unified_agent_config_service_config_sources_parser_types" {
  default     = "types"
  type        = string
  description = "agent config parser types"
}

variable "unified_agent_config_service_config_sources_paths" {
  default     = []
  type        = list
  description = "agent config sources paths"
}

variable "unified_agent_config_service_config_sources_source_type" {
  default     = "LOG_TAIL"
  type        = string
  description = "agent config source type"
}

variable "unified_agent_config_state" {
  default     = "ACTIVE"
  type        = string
  description = "agent config state"
}

variable "log_group_defined_tags_value3" {
  default     = "value2"
  type        = string
  description = "log group defined tags value3"
}

########### log_group ############

variable "tag_namespace_description" {
  default     = "Just a test"
  type        = string
  description = "tag namespace description"
}

variable "tag_namespace_name1" {
  default     = "log_tag_namespace2"
  type        = string
  description = "tag namespace name1"
}
variable "defined_tags_value2" {
  default     = "log-value"
  type        = string
  description = "defined tags value2"
}

variable "freeform_tags_value2" {
  default     = "Finance log"
  type        = string
  description = "freeform tags value2"
}
variable "log_group_name" {
  default     = "log_exampleLogGroup2"
  type        = string
  description = "log group name"
}

########### log_rule ############

variable "defined_tags_value3" {
  default     = "defined_tags_value"
  type        = string
  description = "defined tags value3"
}

