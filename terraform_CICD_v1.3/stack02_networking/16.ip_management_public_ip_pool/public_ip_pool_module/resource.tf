resource "oci_core_public_ip" "test_public_ip" {
  compartment_id    = var.compartment_ocid
  lifetime          = "RESERVED"
  public_ip_pool_id = oci_core_public_ip_pool.test_public_ip_pool.id
  defined_tags            = var.project_tag.definedTags
  freeform_tags           = var.project_tag.freeformTags
}

resource "oci_core_public_ip_pool_capacity" "test_public_ip_pool_capacity" {
  public_ip_pool_id = oci_core_public_ip_pool.test_public_ip_pool.id
  cidr_block        = var.public_ip_pool_cidr_block
  byoip_id          = var.byoip_range_ocid
  
}

resource "oci_core_public_ip_pool" "test_public_ip_pool" {
  compartment_id = var.compartment_ocid
  display_name = var.public_ip_pool_display_name
  defined_tags            = var.project_tag.definedTags
  freeform_tags           = var.project_tag.freeformTags
}


