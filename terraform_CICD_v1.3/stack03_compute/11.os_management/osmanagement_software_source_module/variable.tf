variable "compartment_ocid" {}
variable "software_source_arch_type" {}
variable "software_source_display_name" {}

variable "project_tag" {
    type = map
    default =  {
        definedTags = {}
        freeformTags = {}
    }
}



