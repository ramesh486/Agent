
# --------------------------------
# Common Variables
# --------------------------------

variable "tenancy_ocid" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


# --------------------------------------------------------------------------------
# Optional suffix string to prevent naming collision with tenancy level resources
# --------------------------------------------------------------------------------

variable "suffix" { }

# -----------------------------------------
# Cloudguard Configuration Variables
# -----------------------------------------

variable "is_cloud_guard_enabled" { }
variable "region" { }

# -------------------------------------
# Policy Variables
# --------------------------------------

variable "cloud_guard_policy_name" { }
variable "policy_description" { }
variable "vulnerability_scanning_service_policy_name" { }
variable "policy_statements" { }

# -------------------------------------
# Cloudguard Target Variables
# -------------------------------------

variable "cloud_guard_target_name" { }
variable "target_description" { }
variable "target_resource_type" { }

# -------------------------------------
# Detector Recipe Variables
# -------------------------------------

variable "configuration_detector_recipe_display_name" { }
variable "activity_detector_recipe_display_name" { }
variable "threat_detector_recipe_display_name" { }
variable "responder_recipe_display_name" { }

### END