# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "compartment_ocid" {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}

# ----------------------------------------
# DNS Traffic Managment Policy Variables
# ----------------------------------------

variable "dns_steering_policy_display_name" {
	default = ""
}

variable "health_check_ocid" {
	default = ""
}

variable "dns_steering_policy_type" {
	default = "LOAD_BALANCE"
}

variable "ttl" {
	default = "30"
}

variable "dns_answers" {}

variable "default_answer_data" {}

variable "filter_rule_default_answer_data" {}

variable "limit_rule_variables" {}