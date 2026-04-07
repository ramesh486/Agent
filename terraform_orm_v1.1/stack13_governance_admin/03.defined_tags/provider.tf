provider  "oci" {
region = var.region
}

provider "oci" {
alias = "home"
region = "${lookup(data.oci_identity_regions.home-region.regions[0], "name")}"
}
