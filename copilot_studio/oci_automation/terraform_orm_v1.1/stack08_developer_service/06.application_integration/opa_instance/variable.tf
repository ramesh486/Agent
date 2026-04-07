variable "region" {
    type        = string
  description   = "Enter Region"  
 	default     = "us-ashburn-1"  
}

variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Enter compartment ocid"
}

variable "idcs_access_token" {
    type        = string
    default     = ""
    description = "Enter idcs access token"
}

variable "consumption_model" {
    type        = string
    default     = "UCM"
    description = "Enter consumption model"
}

variable "display_name" {
    type        = string
    default     = "test_opa_instance"
    description = "Enter display name"
}

variable "metering_type" {
    type        = string
    default     = "EXECUTION_PACK"
    description = "Enter metering type"
}

variable "shape_name" {
    type        = string
    default     = "PRODUCTION"
    description = "Enter shape of the instance"
}
