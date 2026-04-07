# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

provider "oci" {
  region               = var.region
}

provider "oci" {
  alias                = "home"
  region               = local.regions_map[local.home_region_key]
}
provider "oci" {
  alias                = "block_volumes_replication_region"
  region               = var.region
}

provider "tls" {}
terraform {
  required_version = ">= 1.2.0"

  required_providers {
    oci = {
      source                = "oracle/oci"
      version               = ">= 4.80.0"
      configuration_aliases = [oci.home,oci.block_volumes_replication_region]
    }
  }
  # experiments = [module_variable_optional_attrs]

}


