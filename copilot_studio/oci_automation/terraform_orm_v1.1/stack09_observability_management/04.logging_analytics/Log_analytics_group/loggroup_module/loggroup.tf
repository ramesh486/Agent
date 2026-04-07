resource "oci_log_analytics_log_analytics_log_group" "test_log_analytics_log_group" {
    #Required
    compartment_id          = var.compartment_ocid
    display_name            = var.log_analytics_log_group_display_name
    namespace               = data.oci_objectstorage_namespace.Test_Bucket.namespace
    #Optional
    description             = var.log_analytics_log_group_description
    
}

data "oci_objectstorage_namespace" "Test_Bucket" {
  compartment_id            = var.compartment_ocid
}

data "oci_log_analytics_log_analytics_log_group" "logGroupRequiredDetails" {
  namespace                  = data.oci_objectstorage_namespace.Test_Bucket.namespace
  log_analytics_log_group_id = oci_log_analytics_log_analytics_log_group.test_log_analytics_log_group.id
}