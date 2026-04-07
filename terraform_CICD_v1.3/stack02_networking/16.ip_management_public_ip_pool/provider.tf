 
provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}


