variable "compartment_ocid" {
    type         = string
    default      = ""
    description  = "The OCID of the compartment where the resources will be deployed."
}

variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "The OCID of the tenancy"
}

variable "region" {
    type         = string
    default      = ""
    description  = "The region where the resources will be deployed"
}
variable "compartment_name" {
    type        = string
    default     = "testing"
    description = "The name of the compartment to deploy the resources"
  
}
variable "compartment_id_in_subtree" {
    type        = bool
    default     = "true"
    description = "Determines whether the compartment ID includes all subcompartments within the specified compartment"

  
}
variable "application_display_name" {
    type         = string
    default      = "Example_apllication"
    description  = "The display name of the application"
}

variable "application_driver_shape" {
    type         = string
    default      = "VM.Standard2.1"
    description  = "The shape of the application's driver node"
}

variable "application_executor_shape" {
    type         = string
    default      = "VM.Standard2.1"
    description  = "The shape of the application's executor nodes"
}

variable "file_uri" {
    type         = string
    default      = "oci://dataflow-warehouse@idennsb6k3kt/datacleaningdatacleaning.py"
    description  = "The URI of the Python file used by the application"
}

variable "application_language" {
    type         = string
    default      = "PYTHON"
    description  = "The programming language used by the application"
}

variable "application_num_executors" {
    type         = string
    default      = 1
    description  = "The number of executors used by the application"
}

variable "application_spark_version" {
    type         = string
    default      = "3.0"
    description  = "The version of Apache Spark used by the application"
}
variable deploy_demo_application {
    type         = bool
    default      = true
    description  = "Determines whether to deploy a demo application"

}

variable Data_Flow_bucket_name{
    type         = string
    default      = "dataflow-logs"
    description  = "The name of the Data flow object storage bucket"

}

variable Data_Flow_bucket_namespace {
    type         = string
    default      = "dataflow-logs"
    description  = "The namespace of the Data flow object storage bucket"

}

variable Data_Flow_warehouse_bucket_name {
    type         = string
    default      = "dataflow-warehouse"
    description  = "The name of the Data flow warehouse object storage bucket"

}

variable Data_flow_warehouse_bucket_namespace{
    type         = string
    default      = "dataflow-logs"
    description  = "The namespace of the Data flow warehose object storage bucket"

}

variable "warehouse_bucket_uri" {
    type         = string
    default      = "oci://dataflow-warehouse@idennsb6k3kt/datacleaningdatacleaning.py"
    description  = "The URI of the dataflow-warehouse bucket"
}

variable "logs_bucket_uri" {
    type         = string
    default      = "oci://dataflow-warehouse@idennsb6k3kt/netflix_titlesnetflix_titles"
    description  = "The URI of the logs bucket"
}

############# catalog_private_endpoint ####################

variable "dataflow_private_endpoint_display_name"{
    type        = string
    default     = "dataflow_endpoint"
    description = "The display name of the private endpoint for Data Flow"
}

variable "private_endpoint_dns_zones"{
    type        = list(string)
    default     = ["sub03171658311.testvcn.oraclevcn.com"]
    description = "The DNS zones associated with the private endpoint"
}


variable "subnet_display_name" {
  type = string
  default = "private subnet-TestVCN"
  description = "The OCID of the subnet where the application is deployed"
}


