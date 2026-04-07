variable "compartment_ocid" {
    type         = string
    default      = ""
    description  = "Enter Compartment OCID"
}

variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "compartment_name" {
    type        = string
    default     = ""
    description = "Compartment Name to deploy"
}

variable "subnet_display_name" {
  type = string
  default = ""
  description = "The subnet in which the application is deployed"
}

variable "region"{
    type = string
    default = ""
    description = "Enter Region Name"
}

variable "admin_username" {
    type = string
    default = "admin"
    description = "Enter Admin username"
}

variable "admin_password" {
    type = string
    default = ""
    description = "Enter Admin Password"
}

variable "shape_name"{
    type = string
    default = "MySQL.VM.Standard.E3.1.8GB"
    description = "Provide the Shape Name"
}

variable "data_storage_size_in_gb"{
    type = number
    default = 50
    description = "Data Storage size in GBs"
}

variable "is_enabled"{
    type = bool
    default = false
    description = "Is enabled?"
}

variable "retention_in_days"{
    type = number
    default = 10
    description = "Retention in days"
}

variable "window_start_time"{
    type = string
    default = "01:00-00:00"
    description = "Window start time"
}


variable "description"{
    type = string
    default = "MySQL Database Service"
    description = "Enter MySQL DB Service"
}

variable "display_name"{
    type = string
    default = "DBSystem001"
    description = "Enter Display name"
}

variable "fault_domain"{
    type = string
    default = "FAULT-DOMAIN-1"
    description = "Enter Fault Domain"
}

variable "hostname_label"{
    type = string
    default = "hostnameLabel"
    description = "Enter Hostname Label"
}

variable "ip_address"{
    type = string
    default =  "10.0.1.10"
    description = "Enter IP address"
}

variable "window_start_time_1"{
    type = string
    default = "sun 01:00"
    description = "Enter Window start time for Maintenance"
}
variable "port"{
    type = number
    default = 3306
    description = "Enter Port number"
}

variable "port_x"{
    type = number
    default = 33306
    description = "Enter Alternative Port number"
}

variable "state"{
    type = string
    default = "ACTIVE"
    description = "State of the database"
}

variable "availability_domain"{
    type = string
    default = ""
    description = "MySQL DB System availability domain"
}