# -------------------------------------------
# Common Variables
# -------------------------------------------

variable "compartment_ocid" {
    default = ""
}

variable "project_tag" {
    type = map
    default = {
        definedTags = {}
        freeformTags = {}
    }
}


variable "connection_display_name" {
  type = string
  default = "GOLDENGATE"
}

variable "connection_description" {
  type = string
  default = "Source ATP"
}

variable "connection_type" {
    type = string
    description = "Allowed values are: GOLDENGATE, KAFKA, KAFKA_SCHEMA_REGISTRY, MYSQL, JAVA_MESSAGE_SERVICE, MICROSOFT_SQLSERVER, OCI_OBJECT_STORAGE, ORACLE, AZURE_DATA_LAKE_STORAGE, POSTGRESQL, AZURE_SYNAPSE_ANALYTICS, SNOWFLAKE, AMAZON_S3, HDFS, ORACLE_NOSQL, MONGODB"
    default = "ORACLE"
}

variable "connection_technology_type" {
    type = string
    description = "Allowed values are: AMAZON_RDS_ORACLE, OCI_AUTONOMOUS_DATABASE, ORACLE_DATABASE, ORACLE_EXADATA, GOLDENGATE"
    default = ""
}

variable "golden_gate_deployment_ocid" {
    type = string
    description = "Golden Gate Deployment OCID"
    default = ""
}

variable "host" {
    type = string
    description = "The name or address of a host"
    default = ""
}

variable "port" {
    type = number   
    description = "The port of an endpoint usually specified for a connection"
    default = 0
}

variable "connection_string" {
    type = string
    default = ""
}

variable "database_ocid" {
    type = string
    default = ""
}

variable "connection_nsg_ocids" {
    type = string
    description = "List of NSG OCIDs"
    default = ""
}

variable "connection_username" {
  type = string
  default = "ggadmin"
}

variable "connection_password" {
    type = string
    default = ""
}

variable "connection_session_mode" {
    type = string
    description = "Allowed values - REDIRECT or DIRECT. The mode of the database connection session to be established by the data client. 'REDIRECT' - for a RAC database, 'DIRECT' - for a non-RAC database. Connection to a RAC database involves a redirection received from the SCAN listeners to the database node to connect to. By default the mode would be DIRECT."
    default = ""
}

variable "subnet_ocid" {
    type = string
    description = "Subnet OCID"
    default = ""
}

variable "connection_wallet" {
    default = ""
}

variable "connection_private_ip" {
    type = string
    default = ""
    description = "The private IP address of the connection's endpoint in the customer's VCN, typically a database endpoint or a big data endpoint (e.g. Kafka bootstrap server). In case the privateIp is provided, the subnetId must also be provided. In case the privateIp (and the subnetId) is not provided it is assumed the datasource is publicly accessible. In case the connection is accessible only privately, the lack of privateIp will result in not being able to access the connection"
}