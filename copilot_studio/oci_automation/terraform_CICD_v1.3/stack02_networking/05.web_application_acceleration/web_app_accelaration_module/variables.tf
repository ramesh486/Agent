variable "region" { } 

variable "tenancy_ocid" { }

variable "compartment_ocid" { }

variable "web_app_acceleration_policy_display_name" { }

variable "is_response_header_based_caching_enabled" { }

variable "gzip_compression_is_enabled" { }

variable "web_app_acceleration_display_name" { }

variable "backend_type" { }

variable "load_balancer_ocid" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
