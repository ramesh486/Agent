module "dedicated_vm_host_" {

    source                      = "./dedicated_vm_host_module"
    compartment_ocid            = local.compartment_ocid
    tenancy_ocid                = var.tenancy_ocid
    region                      = var.region
    dedicated_vm_host_shape     = var.dedicated_vm_host_shape
    display_name                = var.display_name
    project_tag                 = var.project_tag
   
}