
# --------------------------------
# Common Variables
# --------------------------------

variable "tenancy_ocid" {
  type        = string
  description = "The OCID of tenancy"
}

variable "region" {
  type        = string
  description = "the OCI region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Cloudguard"
        }
      freeformTags = {}
  }
}



# -----------------------------------------
# Cloudguard Configuration Variables
# -----------------------------------------

variable "is_cloud_guard_enabled" {
  type        = bool
  default     = true
  description = "the status of the Cloud Guard tenant"
}

# --------------------------------------------------------------------------------
# Optional suffix string to prevent naming collision with tenancy level resources
# --------------------------------------------------------------------------------

variable "suffix" {
  type        = string
  default     = ""
  description = "Optional suffix string used in a resource name"
}


# -------------------------------------
# Policy Variables
# --------------------------------------

variable "cloud_guard_policy_name" {
  type        = string
  description = "Name of Cloud Guard Policy"
  default     = "Cloud-Guard-Policy"
}

variable policy_description {
  type        = string
  description = "Description for the Cloud Guard Policy"
  default     = "Cloud Guard Policy"
}
variable policy_statements {
  type        = list
  description = "Policy statements for the Cloud Guard"
  default     = [
    "Allow service cloudguard to read keys in tenancy",
    "Allow service cloudguard to read compartments in tenancy",
    "Allow service cloudguard to read compute-management-family in tenancy",
    "Allow service cloudguard to read instance-family in tenancy",
    "Allow service cloudguard to read virtual-network-family in tenancy",
    "Allow service cloudguard to read volume-family in tenancy",
    "Allow service cloudguard to read tenancies in tenancy",
    "Allow service cloudguard to read audit-events in tenancy",
    "Allow service cloudguard to read vaults in tenancy",
    "Allow service cloudguard to read object-family in tenancy",
    "Allow service cloudguard to read load-balancers in tenancy",
    "Allow service cloudguard to read object-family in tenancy",
    "Allow service cloudguard to read groups in tenancy",
    "Allow service cloudguard to read dynamic-groups in tenancy",
    "Allow service cloudguard to read users in tenancy",
    "Allow service cloudguard to read database-family in tenancy",
    "Allow service cloudguard to read authentication-policies in tenancy",
    "Allow service cloudguard to read policies in tenancy",
    "Allow service cloudguard to read data-safe-family in tenancy",
    "Allow service cloudguard to read autonomous-database-family in tenancy"
  ]
}

#################### 

variable "vulnerability_scanning_service_policy_name" {
  type        = string
  description = "Name of Scanning Service Policy"
  default     = "Scanning-Service-Policy"
}

# -------------------------------------
# Cloudguard Target Variables
# -------------------------------------

variable "cloud_guard_target_name" {
  type        = string
  description = "Cloud Guard Target Name"
  default     = "Cloud-Guard-Target"
}

variable "target_description" {
  type        = string
  description = "Cloud Guard Target description"
  default     = "Parent compartment"
}

variable "target_resource_type" {
  type        = string
  description = "Cloud Guard target resource type"
  default     = "COMPARTMENT"
}

# -------------------------------------
# Detector Recipe Variables
# -------------------------------------

variable "configuration_detector_recipe_display_name" {
  type        = string
  description = "display name for configuration detector recipe"
  default     = "OCI Configuration Detector Recipe"
}

variable "activity_detector_recipe_display_name" {
  type        = string
  description = "display name for activity detector recipe"
  default     = "OCI Activity Detector Recipe"
}

variable "threat_detector_recipe_display_name" {
  type        = string
  description = "display name for threat detector recipe"
  default     = "OCI Threat Detector Recipe"
}

variable "responder_recipe_display_name" {
  type        = string
  description = "display name for responder recipe"
  default     = "OCI Responder Recipe"
}

### END