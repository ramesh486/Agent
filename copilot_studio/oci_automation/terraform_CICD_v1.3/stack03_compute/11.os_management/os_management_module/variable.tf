variable "compartment_ocid" {}
variable "managed_instance_group_display_name" {}
variable "managed_instance_group_description" {}


variable "project_tag" {
    type = map
    default =  {
        definedTags = {}
        freeformTags = {}
    }
}



