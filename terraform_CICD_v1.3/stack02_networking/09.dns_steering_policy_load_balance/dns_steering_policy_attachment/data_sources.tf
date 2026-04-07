data "oci_dns_zones" "this" {
    #Required
    count          = var.dns_zone_ocid == "" ? 0 : 1
    compartment_id = var.compartment_ocid
    filter {
      name         ="id"
      values       = ["${var.dns_zone_ocid}"]
    }
}