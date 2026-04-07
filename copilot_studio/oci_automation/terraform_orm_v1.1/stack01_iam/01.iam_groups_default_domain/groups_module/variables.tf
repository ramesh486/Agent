variable "tenancy_ocid" {
    type = string
}

variable "group_description" {
    type = string
}

variable "group_name" {
    type = string
}

variable "freeformTags" {
    type = map
    default = {}
}

variable "definedTags" {
    type = map 
    default = {}
}
