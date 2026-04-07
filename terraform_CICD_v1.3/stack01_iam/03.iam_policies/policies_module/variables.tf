variable "tenancy_ocid" {
    type = string
}

variable "compartment_ocid" {
    type = string
}

variable "policy_description" {
    type = string
}

variable "policy_name" {
    type = string
}

variable "policy_statements" {
  type = list
}

variable "freeformTags" {
    type = map
    default = {}
}

variable "definedTags" {
    type = map 
    default = {}
}