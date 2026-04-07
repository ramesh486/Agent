

data "oci_bds_bds_instance" "tf_bds_instance" {
    #Required
    bds_instance_id = ""
}

output "tf_bds_instance" {
  value = data.oci_bds_bds_instance.tf_bds_instance
}
