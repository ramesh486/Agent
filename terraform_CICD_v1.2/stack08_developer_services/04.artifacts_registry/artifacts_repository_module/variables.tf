# ----------------------------------------
# Common Variables
# ----------------------------------------

variable compartment_ocid {}

variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# Common Variables
# ----------------------------------------

variable "artifacts_repository_display_name" {
    default = ""
}

variable "artifacts_repository_description" {
    default = ""
}

variable "artifacts_repository_type" {
    default = ""
}

variable "artifacts_repository_is_immutable" {
    default = ""
}