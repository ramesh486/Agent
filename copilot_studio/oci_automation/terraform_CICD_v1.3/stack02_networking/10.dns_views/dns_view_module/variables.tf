###########################################
# Common Variables
###########################################
variable "compartment_ocid" {}
variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}
variable "scope" {
    default = "PRIVATE"
}
variable "dns_view_display_name" {
    type = string
    default = ""
}
