module test_log_analytics_entity {
    source                                   = "./Entity_module"
    #Required
    compartment_ocid                         = var.compartment_ocid
    log_analytics_entity_entity_type_name    = var.log_analytics_entity_entity_type_name
    log_analytics_entity_name                = var.log_analytics_entity_name
    

    #Optional
    log_analytics_entity_hostname            = var.log_analytics_entity_hostname
    
}