resource "oci_golden_gate_connection" "this" {
    count                       = var.connection_type == "GOLDENGATE" ? 0 : 1
    compartment_id              = var.compartment_ocid
    connection_type             = var.connection_type
    display_name                = var.connection_display_name
    technology_type             = var.connection_technology_type
    connection_string           = var.connection_string
    database_id                 = var.database_ocid
    defined_tags                = var.project_tag.definedTags
    description                 = var.connection_description
    deployment_id               = var.golden_gate_deployment_ocid
    freeform_tags               = var.project_tag.freeformTags
    nsg_ids                     = var.connection_nsg_ocids == "" ? [] : [ var.connection_nsg_ocids ]
    username                    = var.connection_username
    password                    = var.connection_password
    session_mode                = var.connection_session_mode
    subnet_id                   = var.subnet_ocid
    private_ip                  = var.connection_private_ip
}

resource "oci_golden_gate_connection" "golden_gate" {

    count                           = var.connection_type == "GOLDENGATE" ? 1 : 0
    compartment_id                  = var.compartment_ocid
    connection_type                 = var.connection_type
    display_name                    = var.connection_display_name
    technology_type                 = var.connection_type == "GOLDENGATE" ? "GOLDENGATE" : ""
    connection_string               = var.connection_string
    database_id                     = var.database_ocid
    defined_tags                    = var.project_tag.definedTags
    description                     = var.connection_description
    deployment_id                   = var.golden_gate_deployment_ocid
    freeform_tags                   = var.project_tag.freeformTags
    host                            = var.host
    port                            = var.golden_gate_deployment_ocid != "" ? null : var.port
    nsg_ids                         = var.connection_nsg_ocids == "" ? [] : [ var.connection_nsg_ocids ]
    username                        = var.connection_username
    password                        = var.connection_password
    session_mode                    = var.connection_session_mode
    subnet_id                       = var.subnet_ocid
    private_ip                      = var.connection_private_ip
}
