####################
# Common Variables
####################

variable "network_compartment_id_in_subtree" {
    type        = bool
    default     = true
    description = "Compartment ID in Subtree"
}

variable "network_compartment_name" {     
    type        = string
    default     = ""
    description = "Compartment Name of the subnet"
 }

variable monitoring_compartment_id_in_subtree {
    type         = bool
    default      = true
    description  = "Compartment ID in Subtree"
}

variable monitoring_compartment_name {      
    type         = string
    default      = ""
    description  = "Compartment Name to deploy the vcn flowlogs"
}

variable "tenancy_ocid" {
    type        = string
    description = "Target Tenancy OCID"
    default     = ""
}

variable "region" {
    type        = string
    description = "region"
    default     = ""
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "VCN_flowlogs"
        }
      freeformTags = {}
  }
}

####################################
# Spoke VCN Log Group Variables
####################################

variable "spoke_log_group_display_name" {
    description = "Nonprod Spoke VCN Log Group Name"
    type        = string
    default     = "log_group_spoke_vcn"
}

variable "spoke_log_group_description" {
    description = "Nonprod Spoke VCN Log Group Description"
    type        = string
    default     = "Log Group for Nonprod Spoke VCN"
}

##########################
# Subnet Logging Variables
###########################

###################################
# VCN Flow Logs for appdev_subnet
###################################

variable "appdev_subnet_private_logging_display_name" {
	description = "VCN Flow Log Name"
    type        = string
	default     = "log_nonprod_appdev_subnet"
}

variable "appdev_subnet_private_is_logging_enabled" {
	description  = "Is Logging enabled"
    type         = string
	default      = "true"
}

variable "appdev_subnet_private_log_type" {
	description = "Log Type"
   	type        = string
	default     = "SERVICE"
}

variable "appdev_subnet_private_log_retention_duration" {
	description = "Log Retention Duration"
    	type        = string
	default     = "30"
}

variable "appdev_subnet_private_logging_configuration_source_category" {
	description = "Log Source Category"
   	 type        = string
	default     = "all"
}

variable "appdev_subnet_display_name" {
    type         = string
    default      = "appdev_subnet"
    description  = "The subnet from which the vcn flowlogs will be collected"
}

variable "appdev_subnet_private_logging_configuration_source_service" {
	description = "Log Source Service"
    type        = string
	default     = "flowlogs"
}

variable "appdev_subnet_private_logging_configuration_source_type" {
	description = "Log Source Type"
    type        = string
	default     = "OCISERVICE"
}

########################################
# VCN Flow Logs for dbdev_subnet
########################################

variable "dbdev_subnet_private_logging_display_name" {
	description = "VCN Flow Log Name"
   	type        = string
	default     = "log_nonprod_dbdev_subnet"
}

variable "dbdev_subnet_private_is_logging_enabled" {
	description = "Is Logging enabled"
   	type        = string
	default     = "true"
}

variable "dbdev_subnet_private_log_type" {
	description = "Log Type"
   	type        = string
	default     = "SERVICE"
}

variable "dbdev_subnet_private_log_retention_duration" {
	description = "Log Retention Duration"
   	type        = string
	default     = "30"
}

variable "dbdev_subnet_private_logging_configuration_source_category" {
	description = "Log Source Category"
   	type        = string
	default     = "all"
}

variable "dbdev_subnet_display_name" {
    type        = string
    default     = "dbdev_subnet"
    description = "The subnet from which the vcn flowlogs will be collected"
}

variable "dbdev_subnet_private_logging_configuration_source_service" {
	description = "Log Source Service"
   	type        = string
	default     = "flowlogs"
}

variable "dbdev_subnet_private_logging_configuration_source_type" {
	description = "Log Source Type"
    type        = string
	default     = "OCISERVICE"
}

#######################################
# VCN Flow Logs for apptst_subnet
#######################################

variable "apptst_subnet_private_logging_display_name" {
	description = "VCN Flow Log Name"
    type        = string
	default     = "log_nonprod_apptst_subnet"
}

variable "apptst_subnet_private_is_logging_enabled" {
	description = "Is Logging enabled"
    type        = string
	default     = "true"
}

variable "apptst_subnet_private_log_type" {
	description = "Log Type"
    type        = string
	default     = "SERVICE"
}

variable "apptst_subnet_private_log_retention_duration" {
	description = "Log Retention Duration"
    type        = string
	default     = "30"
}

variable "apptst_subnet_private_logging_configuration_source_category" {
	description = "Log Source Category"
    type        = string
	default     = "all"
}

variable "apptst_subnet_display_name" {
    type = string
    default = "dbtst_subnet"
    description = "The subnet in which the vcn flowlogs will be collected"
}

variable "apptst_subnet_private_logging_configuration_source_service" {
	description = "Log Source Service"
    type        = string
	default = "flowlogs"
}

variable "apptst_subnet_private_logging_configuration_source_type" {
	description = "Log Source Type"
    type        = string
	default = "OCISERVICE"
}

########################################
#  VCN Flow Logs for dbtst_subnet
########################################

variable "dbtst_subnet_private_logging_display_name" {
	description = "VCN Flow Log Name"
    type        = string
	default     = "log_nonprod_dbtst_subnet"
}

variable "dbtst_subnet_private_is_logging_enabled" {
	description = "Is Logging enabled"
    type        = string
	default     = "true"
}

variable "dbtst_subnet_private_log_type" {
	description = "Log Type"
    type        = string
	default     = "SERVICE"
}

variable "dbtst_subnet_private_log_retention_duration" {
	description = "Log Retention Duration"
    type        = string
	default     = "30"
}

variable "dbtst_subnet_private_logging_configuration_source_category" {
	description = "Log Source Category"
    type        = string
	default = "all"
}

variable "dbtst_subnet_display_name" {
    type = string
    default = "apptst_subnet"
    description = "The subnet from which the vcn flowlogs will be collected"
}

variable "dbtst_subnet_private_logging_configuration_source_service" {
	description = "Log Source Service"
    type        = string
	default = "flowlogs"
}

variable "dbtst_subnet_private_logging_configuration_source_type" {
	description = "Log Source Type"
    type        = string
	default = "OCISERVICE"
}

