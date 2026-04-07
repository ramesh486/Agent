

resource "oci_core_volume_group" "test_volume_group" {
  availability_domain   = data.oci_identity_availability_domains.ADs.availability_domains[0]["name"]
  compartment_id        = var.compartment_ocid
  display_name          = var.volume_group_display_name
  defined_tags          = var.definedTags
  freeform_tags         = var.freeformTags
 
  source_details {
  type = "volumeIds"
  volume_ids = var.volume_ocids
  
}
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.compartment_ocid
}
