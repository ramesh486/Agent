variable "tenancy_ocid" {
type = string  
description = "Target Tenancy OCID"
default = ""
}

variable "region" {
type = string  
description = "Region"
default = "us-ashburn-1"
}

### Variables for Budget###

variable "budget_amount" {
    default = "100000"
    description = "The Amount for the budget"
    type        = number  
}

variable "budget_reset_period" {
  description = "The reset period for the budget."
  default     = "MONTHLY"
  type        = string  
}

variable "budget_target_name" {
    default = "Test_budget"
    description = "The Display name for the budget"
    type        = string  
}

variable "budget_target_type" {                     ### Budget Scope ###
    description = "The target type for the budget"
    default     = "COMPARTMENT"
    type        = string
  
}

#### Variables for Budget alert rules #####

variable "budget_alert_rule_threshold" {
    default = "100"
    description = "The target for the budget"
    type        = number
  
}

variable "budget_alert_rule_threshold_type" {
    description = "The threshold type for the budget"
    default     = "ABSOLUTE"
    type        = string
  
}
variable "budget_alert_rule_type" {
    description = "The type of alert for the budget"
    default     = "ACTUAL"
    type        = string
  
}

variable "budget_alert_rule_message" {
   description = "The alert message for budget alerts."
   default     = "Default budget alert"
   type        = string
  
}
variable "budget_alert_rule_recipients" {
    default = ""
    description = "The type of alert for the budget"
    type        = string
  
}