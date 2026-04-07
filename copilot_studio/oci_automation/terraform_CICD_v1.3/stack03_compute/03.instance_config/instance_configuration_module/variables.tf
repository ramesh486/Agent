variable "tenancy_ocid" { }

variable "region" { }

variable "compartment_ocid" { }

variable "instance_configuration_display_name" { }

variable "instance_type" { }

variable "ipxe_script" { }

variable "instance_shape" { }

variable "display_name" { }

variable "is_pv_encryption_in_transit_enabled" { }

variable "preferred_maintenance_action" { }

variable "launch_mode" { }

variable "is_management_disabled" { }

variable "is_monitoring_disabled" { }

variable "network_type" { }

variable "are_legacy_imds_endpoints_disabled" { }

variable "ocpus" { }

variable "memory_in_gbs" { }

variable "assign_private_dns_record" { }

variable "assign_public_ip" { }

variable "vnic_display_name" { }

variable "skip_source_dest_check" { }

variable "source_type" { }

variable "source_image_ocid" { }

variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}


