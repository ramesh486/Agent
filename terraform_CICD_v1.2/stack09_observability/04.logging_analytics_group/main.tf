module log_analytics_log_group {
    source                           = "./loggroup_module"
    compartment_ocid                     = local.monitoring_compartment_ocid
    log_analytics_log_group_display_name = var.log_analytics_log_group_display_name
    log_analytics_log_group_description  = var.log_analytics_log_group_description
    project_tag                          = var.project_tag 
}

