module catalog_private_endpoint {
    source                                   = "./data_catalog_endpoint_module"  
    #Required
    compartment_ocid                         = var.compartment_ocid
    catalog_private_endpoint_dns_zones       = var.catalog_private_endpoint_dns_zones
    catalog_private_endpoint_display_name    = var.catalog_private_endpoint_display_name
    subnet_id                                = var.subnet_id
}

module metastore {
    source                                    = "./data_catalog_metastore"  
    #Required
    compartment_ocid                          = var.compartment_ocid
    metastore_default_external_table_location = var.metastore_default_external_table_location
    metastore_default_managed_table_location  = var.metastore_default_managed_table_location
    metastore_display_name                    = var.metastore_display_name
    
}

module catalog {
    source                                    = "./data_catalog_module"  
    #Required
    compartment_ocid                          = var.compartment_ocid
    catalog_display_name                      = var.catalog_display_name
   
}