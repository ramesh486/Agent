
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  region           = var.region
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

