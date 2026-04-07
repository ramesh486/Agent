variable "region" {
    type = string  
    description = "Region"
    default = "us-ashburn-1"
}

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
    description = "Group Display Name"
    default = ""
}

variable "iam_group_schema" {
    type = string
    description = "IAM Group Schema"
    default = ""
}


variable "identity_domain_idcs_endpoint" {
    type = string
    description = "Go to OCI console >> IAM >> select the domain >> collect the DOMAIN URL with Port"
    default = ""
}
