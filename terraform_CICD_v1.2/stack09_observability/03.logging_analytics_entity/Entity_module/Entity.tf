resource "oci_log_analytics_log_analytics_entity" "test_log_analytics_entity" {
    compartment_id           = var.compartment_ocid
    entity_type_name         = var.log_analytics_entity_entity_type_name
    name                     = var.log_analytics_entity_name
    namespace                = data.oci_objectstorage_namespace.test_namespace.namespace
    hostname                 = var.log_analytics_entity_hostname
    defined_tags             = var.project_tag.definedTags
    freeform_tags            = var.project_tag.freeformTags  
    
}
data "oci_objectstorage_namespace" "test_namespace" {
  compartment_id             = var.compartment_ocid
}
data "oci_log_analytics_log_analytics_entity" "test_log_analytics_entity_Details" {
 namespace                   = data.oci_objectstorage_namespace.test_namespace.namespace
 log_analytics_entity_id     = oci_log_analytics_log_analytics_entity.test_log_analytics_entity.id
 }