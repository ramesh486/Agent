##########################################################################################################
# Copyright (c) 2022,2023 Oracle and/or its affiliates, All rights reserved.                             #
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl. #
##########################################################################################################

# # -----------------------------------------------------------------------------
# # Provider Requirements if using stack as a module
# # -----------------------------------------------------------------------------
# terraform {
#   required_version = ">= 1.0.0"

#   required_providers {
#     oci = {
#       source                = "oracle/oci"
#       version               = "5.9.0"
#       configuration_aliases = [oci, oci.home_region]
#     }
#   }
# }

# -----------------------------------------------------------------------------
# WARNING!
# UNCOMMENT EVERYTHING BELOW AND COMMENT EVERYTHING ABOVE IF YOU WISH TO USE THIS 
# STACK AS A STANDALONE - DO NOT TOUCH IF USING THIS STACK IN A MODULE CALL
# Provider Requirements if using stack as standalone
# -----------------------------------------------------------------------------
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.9.0"
    }
  }
}


# -----------------------------------------------------------------------------
# Provider blocks for home region and alternate region(s)
# -----------------------------------------------------------------------------
provider "oci" {
  region           = var.region
}

provider "oci" {
  alias            = "home_region"
  region           = local.home_region[0]
}

provider "oci" {
  alias            = "backup_region"
  region           = var.backup_region
}

# -----------------------------------------------------------------------------
# Provider Variables
# -----------------------------------------------------------------------------
variable "current_user_ocid" {
  type        = string
  description = "The OCID of the current user"
  default     = ""
}

variable "api_fingerprint" {
  type        = string
  description = "The fingerprint of API"
  default     = ""
}

variable "api_private_key_path" {
  type        = string
  description = "The local path to the API private key"
  default     = ""
}

variable "api_private_key" {
  type        = string
  description = "The API private key"
  default     = ""
}