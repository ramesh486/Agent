module "oci_dns_private_view" {
    source                  = "./dns_view_module"
    compartment_ocid        = local.compartment_ocid
    dns_view_display_name   = var.dns_view_display_name
    scope                   = var.scope
    project_tag             = var.project_tag
}