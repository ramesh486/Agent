variable "project_tag" {
    type = map
    description = "Tags to be Assigned to the Resources"
    default = {
        definedTags = {}
        freeformTags = {}
    }
}
variable "domain_group_display_name" {
    type = string
}

variable "identity_domain_idcs_endpoint" {}

variable "iam_group_schema" {}

