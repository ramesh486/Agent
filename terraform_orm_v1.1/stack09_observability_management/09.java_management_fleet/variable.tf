# variable "tenancy_ocid" {
#     type         = string
#     default      = ""
#     description  = "Tenancy ocid"
# }
variable "region" {
    type           = string
    default        = ""
    description    = "region"
}
variable "compartment_ocid" {
    type           = string
    default        = ""
    description    = "compartment ocid"
}

variable "fleet_display_name" {
  default          = "Example Fleet"
  type             = string
  description      = "fleet name"
}

variable "fleet_display_name_contains" {
  default          = "Example Fleet"
  type             = string
  description      = "fleet display name contains"
}

variable "fleet_description" {
  default          = "Example Fleet created by Terraform"
  type             = string
  description      = "fleet"
}

variable "fleet_is_advanced_features_enabled" {
  default          = false
  type             = bool
  description      = "disable"
}

variable "fleet_freeform_tags" {
  default          = { "bar-key" = "value" }
  type             = map(string)
  description      = "freeform tags"
}

variable "fleet_defined_tags" {
  default          = { "example-tag-namespace-all.example-tag" = "value" }
  type             = map(string)
  description      = "defined tags"
}

variable "fleet_state" {
  default          = "ACTIVE"
  type             = string
  description      = "fleet_state"
}

variable "fleet_log_group_ocid" {
  default          = "ocid1.loggroup.oc1.ap-mumbai-1.amaaaaaahjrah2iahokhz47fnzmfpmp46txlqvlgm3duvepuhfxy56sfqgtq"
  type             = string
  description      = "group ocid"
}

variable "fleet_inventory_log_ocid" {
  default          = "ocid1.log.oc1.ap-mumbai-1.amaaaaaahjrah2iagmbgqng774mekrolt3e7jxfdxjekghwgzu2opowpjsdq"
  type             = string
  description      = "fleet inventory ocid"

}

