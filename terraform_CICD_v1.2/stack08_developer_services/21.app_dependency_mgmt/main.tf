module knowledge_base {
    source                      = "./adm_knowledge_module"
    compartment_ocid            = local.compartment_ocid
    knowledge_base_display_name = var.knowledge_base_display_name
    project_tag                 = var.project_tag
}