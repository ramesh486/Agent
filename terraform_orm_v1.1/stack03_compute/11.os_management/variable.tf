variable "region" {
  type        = string
  description = "Enter Region"  
 	default     = "us-ashburn-1"  
}
variable "tenancy_ocid" {
  type        = string
  description = "Enter tenancy_ocid"  
 	default     = ""  
}
variable "compartment_ocid" {
    type        = string
    default     = ""
    description = "Compartment ID in Subtree"
}

variable "instance_display_name" {
  type        = string
  description = "instance display name"
  default     = "TestInstance"
}

variable "shape" {
  type        = string
  description = "shape"
  default     = "VM.Standard2.1"
}

variable "vnic_display_name" {
  type        = string
  description = "vnic display name"
  default     = "Primaryvnic"
}

variable "assign_public_ip" {
  type        = bool
  description = "assign public ip"
  default     = true
}

variable "hostname_label" {
  type        = string
  description = "hostname label"
  default     = "tfexampleinstance"
}

variable "instance_image_ocid" {
  type        =  string
  description = "source id"
  default     = "ocid1.image.oc1.iad.aaaaaaaageeenzyuxgia726xur4ztaoxbxyjlxogdhreu3ngfj2gji3bayda"

}

variable "source_type" {
  type        =  string
  description = "source type"
  default     = "image"

}

variable "ssh_public_key" {
  type        =  string
  description = "provide the ssh key"
  default     = ""

}

variable "create" {
  type        =  string
  description = "create timeout"
  default     = "60m"
}

variable "vcn_cidr_block" {
  type        =  string
  description = "cidr block"
  default     = "10.1.0.0/16"
}

variable "vcn_display_name" {
  type        =  string
  description = "vcn display name"
  default     = "TestVcn"
}

variable "vcn_dns_label" {
  type        =  string
  description = "dns label"
  default     = "testvcn"
}

variable "igw_display_name" {
  type        =  string
  description = "igw display name"
  default     = "TestInternetGateway"
}

variable "rt_display_name" {
  type        =  string
  description = "rt display name"
  default     = "DefaultRouteTable"
}

variable "route_rules_destination" {
  type        =  string
  description = "route rules destination"
  default     = "0.0.0.0/0"
}

variable "route_rules_destination_type" {
  type        =  string
  description = "route rules destination type"
  default     = "CIDR_BLOCK"
}

variable "subnet_cidr_block" {
  type        =  string
  description = "cidr block"
  default     = "10.1.20.0/24"
}

variable "subnet_display_name" {
  type        =  string
  description = "subnet display name"
  default     = "TestSubnet"
}

variable "subnet_dns_label" {
  type        =  string
  description = "dns label"
  default     = "testsubnet"
}

variable "managed_instance_group_display_name" {
  type        =  string
  description = "managed instance group display name"
  default     = "TF-managed-instance-group"
}

variable "arch_type" {
  type        =  string
  description = "arch type"
  default     = "X86_64"
}

variable "software_source_display_name" {
  type        =  string
  description = "software source display name"
  default     = "TF-software-source"
}

variable "checksum_type" {
  type        =  string
  description = "checksum type"
  default     = "SHA1"
}

variable "description" {
  type        =  string
  description = "description"
  default     = "TF software source"
}


