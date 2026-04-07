
resource "oci_identity_tag_namespace" "tag-namespace1" {
  #Required
  compartment_id    = var.compartment_ocid
  description       = var.tag_namespace_description1
  name              = var.tag_namespace_name
}

resource "oci_identity_tag" "tag1" {
  #Required
  description       = "log tag1"
  name              = "log-tag1"
  tag_namespace_id  = oci_identity_tag_namespace.tag-namespace1.id
}

resource "oci_identity_tag" "tag2" {
  #Required
  description       = "log tag 2"
  name              = "log-tag-2"
  tag_namespace_id  = oci_identity_tag_namespace.tag-namespace1.id
}

