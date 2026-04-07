resource "oci_core_image" "custom_image" {
  compartment_id        = var.compartment_ocid
  instance_id           = var.instance_ocid

  launch_mode           = var.launch_mode 
  timeouts {
    create = var.image_timeout_create 
  }
}