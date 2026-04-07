######################
###log Analytics Entity
######################

module test_log_analytics_entity {
    source                                   = "./Entity_module"
    compartment_ocid                       = local.monitoring_compartment_ocid
    log_analytics_entity_entity_type_name  = var.log_analytics_entity_entity_type_name
    log_analytics_entity_name              = var.log_analytics_entity_name
    log_analytics_entity_hostname          = var.log_analytics_entity_hostname
    project_tag                            = var.project_tag

 
   
    
}