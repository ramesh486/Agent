variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "project_tag" {
	type = map
	default = {
		definedTags = {bar-key = "value"}
		freeformTags = {bar-key = "value"}
	}
}

####################container scan recipe##########

variable "container_scan_recipe_display_name" {
  type        = string
  default     = "displayName"
  description = "Specifies the display name of the container scan recipe"

}

variable "container_scan_recipe_image_count" {
  type         = number
  default      = 4
  description  = "The number of images associated with the container scan recipe"

}

variable "container_scan_recipe_state" {
  type         = string 
  default      = "Active"
  description  = "Specifies the state of the container scan recipe"
}

variable "container_repo_name" {
  type          = string
  default       = "cyc-security-repos-do-not-use"
  description   = "The name of the container repository"

}

variable "vault_secret_ocid" {
  type           = string
  default        = "some-secret-ocid"
  description    = "The OCID of the vault secret"
}
variable "scan_level" {
  type            = string
  default         = "NONE"
  description     = "The level of scanning to be performed in Container Scan Recipe"
} 
###########host scan recipe ############

variable "scan_level1" {
  type             = string
  default          = "NONE"
  description      = "The first level of scanning to be performed in Host Scan Recipe"
}
variable "vendor" {
  type             = string
  default          = "OCI"
  description      = "Host Scan Recipe Vendor name"
}
variable "scan_level2" {
  type             = string
  default          = "NONE"
  description      = "The second level of scanning to be performed in Host Scan Recipe"
}
variable "vendor_type" {
  type             = string
  default          = "OCI"
  description      = "The type of vendor"
}
variable "scan_level3" {
  type             = string
  default          = "NONE"
  description      = "The third level of scanning to be performed in Host Scan Recipe"
}
variable "type" {
  type             = string
  default          = "DAILY"
  description      = "Specifies the Scan Recipe type"
}
variable "day_of_week" {
  type             = string
  default          = "SUNDAY"
  description      = "Schedule Scan for a particular day in a week"  
}
variable "display_name" {
  type             = string
  default          = "TestHostScanRecipe"
  description      = "The display name of the host scan recipe"

}
################# host scan Target ###########

variable "description" {
  type             = string
  default          = "Test target example"
  description      = "The description of the scan target"
}
variable "display_name1"{
  type             = string
  default          = "TestHostScanTarget"
  description      = "The display name of the host scan target"
}
variable "host_scan_recipe_ocid" {
  type             = string
  default          = ""
  description      = "The OCID of the host scan recipe"

  
}


  


  
