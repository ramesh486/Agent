# ----------------------------------------
# Common Variables
# ----------------------------------------

variable compartment_ocid {}
variable region {}
variable "project_tag" {
  type = map
  default = {
      definedTags = {}
      freeformTags = {}
  }
}


# ----------------------------------------
# Container Repository Variables
# ----------------------------------------

variable "container_repository_display_name" {
    default = ""
}

variable "container_repository_description" {
    default = ""
}

variable "container_repository_is_public" {
    default = false
}


variable "container_repository_readme_content" {
    default = ""
}

variable "container_repository_readme_format" {
    default = ""
    description = "Accepted values are: TEXT_PLAIN, TEXT_MARKDOWN"
}
