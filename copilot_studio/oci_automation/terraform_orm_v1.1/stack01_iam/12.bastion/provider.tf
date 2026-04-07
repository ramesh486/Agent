provider "oci" {
  region           = var.region
  # ignore_defined_tags = ["Oracle-Tags.CreatedBy", "Oracle-Tags.CreatedOn"]
}

provider "oci" {
alias = "home"
region = "${lookup(data.oci_identity_regions.home-region.regions[0], "name")}"
}