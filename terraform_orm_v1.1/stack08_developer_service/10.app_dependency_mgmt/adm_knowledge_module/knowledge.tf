resource "oci_adm_knowledge_base" "test_knowledge_base" {
    compartment_id = var.compartment_ocid
    display_name   = var.knowledge_base_display_name
}