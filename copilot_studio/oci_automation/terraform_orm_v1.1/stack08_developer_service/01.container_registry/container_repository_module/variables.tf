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

variable "container_repository_display_name" {
    default = ""
}

variable "container_repository_description" {
    default = ""
}

variable "container_repository_is_public" {}

variable "container_repository_readme_content" {
    default = ""
}

variable "container_repository_readme_format" {
    default = ""
}

