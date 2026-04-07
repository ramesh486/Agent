module "osmanagement" {
    source                = "./osmanagement_module"
	  tenancy_ocid          = var.tenancy_ocid
		region                = var.region
    compartment_ocid      = var.compartment_ocid
    instance_display_name = var.instance_display_name
    shape                 = var.shape

  
    
    vnic_display_name     = var.vnic_display_name
    assign_public_ip      = var.assign_public_ip 
    hostname_label        = var.hostname_label
  


    source_type        = var.source_type
    instance_image_ocid= var.instance_image_ocid
  

    ssh_public_key             = var.ssh_public_key
    create                      = var.create
    
    vcn_cidr_block                  = var.vcn_cidr_block
    vcn_display_name                = var.vcn_display_name
    vcn_dns_label                   = var.vcn_dns_label

    igw_display_name  = var.igw_display_name
  
    rt_display_name               = var.rt_display_name

  
    route_rules_destination       = var.route_rules_destination
    route_rules_destination_type  = var.route_rules_destination_type
    

   subnet_cidr_block          = var.subnet_cidr_block 
   subnet_display_name        = var.subnet_display_name
   subnet_dns_label           = var.subnet_dns_label
   managed_instance_group_display_name = var.managed_instance_group_display_name
   arch_type                           = var.arch_type
   software_source_display_name        = var.software_source_display_name
   checksum_type                       = var.checksum_type
   description                         = var.description
  
}

