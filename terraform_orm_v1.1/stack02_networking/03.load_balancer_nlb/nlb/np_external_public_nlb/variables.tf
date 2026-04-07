####################
# Common Variables
####################


variable "tenancy_ocid" {
  default = "" 
  type = string
  description = "Tenancy OCID"
}

variable "compartment_id_in_subtree" {
    type = bool
    default = true
    description = "Compartment ID in Subtree"
}

variable "compartment_name" {
    type = string
    default = "network"
    description = "Compartment Name to deploy the DRG"
}

variable "region" { 
  default = "us-ashburn-1" 
  type = string
  description = "Select the Region"
}

variable "project_tag" {
  type        = map
  description = "Tags to be assigned to resources created by terraform"
  default = {
      definedTags = {
          
      }
      freeformTags = {
        
      }
  }
}

#####################################
# Network Load Balancer Variables
#####################################

variable nlb_display_name {
  type = string
  default = "np_external_public_nlb"
  description = "Name for Network load balancer"
}

variable is_private {
  type = string
  default = "false" 
  description = "Select false for Public_LB, and true for Private_LB"
}

variable nlb_ip_version {
  type = string
  default = "IPV4"
  description = "IP version associated with the NLB"
}

variable subnet_display_name {
  type = string
  default = "np_nlb_pub_subnet"
  description = "The subnet in which the load balancer will be created"
}

#############################################
# Network Load Balancer Listener Variables
#############################################

variable listener_name {
  type = string
  default = "np_ext_pub_nlb_listener"
  description = "Name for the listener"
}

variable listener_port {
  type = string
  default = "443"
  description = "Communication port for the listener"
}

variable listener_protocol {
  type = string
  default = "TCP_AND_UDP"
  description = "Protocol on which the listener accepts connection requests"
}

###################################################
# Network Load Balancer Backend Server Variables
###################################################

variable backend_name {
  type = string
  default = "nonprod_paloalto1"
  description = "Name for the backend"
}

variable backend_weight {
  type = string
  default = "1"
  description = "Network load balancing backend weight assigned to the server"
}

variable backend_port {
  type = string
  default = "443"
  description = "Network load balancing backend port"
}

variable private_ip_address {
  type = string
  default = "10.97.1.120"
  description = "PaloAlto untrust private_ip_address"
}

###############################################
# Network Load Balancer Backend Set Variables
###############################################

variable backendset_name {
  type = string
  default = "np_ext_pub_nlb_backendset"
  description = "Enter backend set name"
}

variable backendset_protocol {
  type = string
  default = "HTTPS"
  description = "Enter backend set name"
}

variable backendset_port {
  type = string
  default = "443"
  description = "Enter backend set name"
}

variable backendset_policy {
  type = string
  default = "FIVE_TUPLE"
  description = "Network load balancer policy for the backend set"
}

variable backendset_interval_in_millis {
  type = string
  default = "10000"
  description = "Interval between health checks, in milliseconds"
}

variable backendset_timeout_in_millis {
  type = string
  default = "3000"
  description = "Maximum time, in milliseconds, to wait for a reply to a health check"
}   

variable backendset_retries {
  type = string
  default = "3"
  description = "Number of retries; he number of retries to attempt before a backend server is considered unhealthy"
}

variable backendset_request_data {
  type = string
  default = ""
  description = "Base64 encoded pattern to be sent as UDP or TCP health check probe"
}

variable backendset_response_data {
  type = string
  default = ""
  description = "Base64 encoded pattern to be validated as UDP or TCP health check probe response."
}

variable return_code {
  type = string
  default = "200"
  description = "Status Code"
}

variable url_path {
  type = string
  default = "/"
  description = "URL path"
}


### END
