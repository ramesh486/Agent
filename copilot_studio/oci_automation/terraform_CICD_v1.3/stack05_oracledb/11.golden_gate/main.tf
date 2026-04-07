module "golden_gate_connection" {
    source                                  = "./golden_gate_connection_module"
    compartment_ocid                        = var.compartment_ocid
    project_tag                             = var.project_tag
    connection_display_name                 = var.connection_display_name
    connection_description                  = var.connection_description
    connection_type                         = var.connection_type
    connection_technology_type              = var.connection_technology_type
    golden_gate_deployment_ocid             = var.golden_gate_deployment_ocid
    host                                    = var.host
    port                                    = tonumber(var.port)
    connection_string                       = var.connection_string
    database_ocid                           = var.database_ocid
    connection_nsg_ocids                    = var.connection_nsg_ocids
    connection_username                     = var.connection_username
    connection_password                     = var.connection_password
    connection_session_mode                 = var.connection_session_mode
    subnet_ocid                             = var.subnet_ocid
    connection_private_ip                   = var.connection_private_ip
}

module "golden_gate_connection_assignment_module" {
    source                                  = "./gg_connection_assignment_module"
    golden_gate_connection_ocid             = module.golden_gate_connection.ocid
    golden_gate_deployment_ocid             = var.attach_golden_gate_deployment_ocid
}