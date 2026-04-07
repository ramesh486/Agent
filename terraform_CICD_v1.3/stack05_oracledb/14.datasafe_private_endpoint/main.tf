module "data_safe_private_endpoint" {
    source                                  = "./datasafe_private_endpoint_module"
    compartment_ocid                        = var.compartment_ocid
    project_tag                             = var.project_tag 
    data_safe_private_endpoint_display_name = var.data_safe_private_endpoint_display_name
    data_safe_private_endpoint_description  = var.data_safe_private_endpoint_description
    subnet_ocid                             = var.subnet_ocid
    vcn_ocid                                = var.vcn_ocid
    data_safe_private_endpoint_nsg_ocids    = var.nsg_ocids
}