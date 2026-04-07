variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "The OCID (Oracle Cloud Identifier) of the compartment."
}

variable "region" {
    type        = string
    default     = "us-ashburn-1"
    description = "The region where the resources will be provisioned."

}

############# catalog_private_endpoint ####################


variable "catalog_private_endpoint_display_name" {
    type        = string
    default     = "Example_endpoint"
    description = "The display name for the catalog private endpoint."
}

variable "catalog_private_endpoint_dns_zones" {
    type        = list(string)
    default     = [""]
    description = "The list of DNS zones for the catalog private endpoint."
}

variable "subnet_id" {
    type        = string
    default     = ""
    description = "The OCID of the subnet where the catalog private endpoint will be created."
}


############# catalog metastore ####################

variable "metastore_default_external_table_location" {
    type        = string
    default     = "oci://bucket-20230619-1053@idennsb6k3kt/Datatest.txt"
    description = "The default location for external tables in the metastore."
}

variable "metastore_default_managed_table_location" {
    type        = string
    default     = "oci://bucket-20230619-1053@idennsb6k3kt/Datatest.txt"
    description = "The default location for managed tables in the metastore."
}

variable "metastore_display_name" {
    type        = string
    default     = "Example_metastore"
    description = "The display name for the metastore."
}

############# data_catalog ####################

variable "catalog_display_name" {
    type        = string
    default     = "Example_catalog"
    description = "The display name for the data catalog."
}
