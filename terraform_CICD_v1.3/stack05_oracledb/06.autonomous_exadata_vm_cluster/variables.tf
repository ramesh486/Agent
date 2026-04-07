variable "tenancy_ocid" {}
variable "region" {}

variable compartment_id_in_subtree {
    type = bool
    default = true 
    description = "Compartment in subtree"
}

variable compartment_name {
  type = string
  default = ""
  description = "Compartment name to deploy the resources"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
        "Automation_Tags.CostCenter" = "Automation",
        "Automation_Tags.ResourceType" = "Autonomous_exadata_vm_cluster"}
      freeformTags = {}
  }
}

### Autonomous Exadata VM Cluster Variables

variable "cloud_exadata_infrastructure_ocid" {
  type        = string
  default     = ""
  description = "The OCID of the cloud Exadata infrastructure."
}

variable "cloud_auto_vm_cluster_display_name" {
  type        = string
  default     = "TestAutonomousExadataVMCluster"
  description = "Name for the Exadata VM Cluster"
}

variable "cloud_auto_vm_cluster_subnet_ocid" {
  type        = string
  default     = ""
  description = "The OCID of the subnet the cloud Autonomous VM Cluster is associated with."
}

variable "cloud_auto_vm_cluster_data_storage_size_in_tbs" {
  type        = string
  default     = "2.0"
  description = "The data disk group size to be allocated for Autonomous Databases, in TBs."
}

variable "cloud_auto_vm_cluster_cpu_core_count_per_node" {
  type        = string
  default     = "10"
  description = "The number of CPU cores to be enabled per VM cluster node."
}

variable "cloud_auto_vm_cluster_is_mtls_enabled_vm_cluster" {
  type        = bool
  default     = false
  description = "Enable mutual TLS(mTLS) authentication for database at time of provisioning a VMCluster."
}

variable "cloud_auto_vm_cluster_license_model" {
  type        = string
  default     = "LICENSE_INCLUDED"
  description = "The Oracle license model that applies to the Oracle Autonomous Database"
}

variable "cloud_auto_vm_cluster_maintenance_window_days_of_week_name" {
  type        = string
  default     = ""
  description = "Name of the day of the week."
}

variable "cloud_auto_vm_cluster_maintenance_window_months_name" {
  type        = string
  default     = ""
  description = "Name of the month of the year."
}

variable "cloud_auto_vm_cluster_memory_per_oracle_compute_unit_in_gbs" {
  type        = number
  default     = 12
  description = "The amount of memory (in GBs) to be enabled per OCPU or ECPU"
}

variable "cloud_auto_vm_cluster_total_container_databases" {
  type        = number
  default     = 2
  description = "The total number of Autonomous Container Databases that can be created."
}



