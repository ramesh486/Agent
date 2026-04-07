variable "region" {
  type        = string
  description = "Region in which to launch instances"
  default     = "us-ashburn-1"
}

variable "tenancy_ocid" {
  type        = string
  description = "Tenancy OCID in which to launch instances"
  default     = ""
}

variable "compartment_ocid" {
  type        = string
  description = "Compartment OCID in which to launch instances"
  default     = ""

}

variable "web_app_acceleration_policy_display_name" {
  type        = string
  default     = "WAAPolicy1"
  description ="Display name of WAA policy name"
}

variable "is_response_header_based_caching_enabled" {
  type        = bool
  default     = true
  description = "Is response header based caching enabled "
}

variable "gzip_compression_is_enabled" {
  type        = bool
  default     = true
  description = "Is gzip compression enabled"
}


variable "web_app_acceleration_display_name" {
  type        = string
  default     = "WAA1"
  description = "Display name of web app acceleration"
}

variable "backend_type" {
  type        = string
  default     = "LOAD_BALANCER"
  description = "Backend type"
}

variable "load_balancer_ocid" {
  type        = string
  default     = ""
  description = "OCID of the load balancer"
}
