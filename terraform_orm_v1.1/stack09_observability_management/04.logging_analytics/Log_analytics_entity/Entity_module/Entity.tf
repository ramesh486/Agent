resource "oci_log_analytics_log_analytics_entity" "test_log_analytics_entity" {
    #Required
    compartment_id           = var.compartment_ocid
    entity_type_name         = var.log_analytics_entity_entity_type_name
    name                     = var.log_analytics_entity_name
    namespace                = data.oci_objectstorage_namespace.Test_Bucket.namespace

    #Optional
    hostname                 = var.log_analytics_entity_hostname
   
    
}
data "oci_objectstorage_namespace" "Test_Bucket" {
  compartment_id             = var.compartment_ocid
}
data "oci_log_analytics_log_analytics_entity" "test_log_analytics_entity_Details" {
 namespace                   = data.oci_objectstorage_namespace.Test_Bucket.namespace
 log_analytics_entity_id     = oci_log_analytics_log_analytics_entity.test_log_analytics_entity.id
 }