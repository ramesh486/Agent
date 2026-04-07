module catalog_private_endpoint {
    source                                   = "./data_catalog_endpoint_module"  
    #Required
    compartment_ocid                         = local.app_compartment_ocid
    catalog_private_endpoint_dns_zones       = var.catalog_private_endpoint_dns_zones
    catalog_private_endpoint_display_name    = var.catalog_private_endpoint_display_name
    subnet_ocid                              = local.subnet_ocid
    project_tag                              = var.project_tag 
   

}


module catalog {
    source                                    = "./data_catalog_module"  
    #Required
    compartment_ocid                          = local.app_compartment_ocid
    catalog_display_name                      = var.catalog_display_name
     project_tag                              = var.project_tag 
  
   
}