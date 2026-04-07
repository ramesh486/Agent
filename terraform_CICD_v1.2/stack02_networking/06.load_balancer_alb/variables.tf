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
    default = ""
    description = "Compartment Name to deploy the DRG"
}

variable "subnet_display_name" {
    type = string
    default = ""
    description = "Subnet Name"
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
        "Automation_Tags.Automation_CostCenter" = "Automation",
        "Automation_Tags.Automation_ResourceType" = "Application Load Balancer"
        }
      freeformTags = {}
  }
}

#####################################
# Application  Load Balancer Variables
#####################################

variable "app_lb_display_name" {
  type = string
  default = "stgdev_db_alb"
  description = "Name for Application load balancer"
}

 variable "app_lb_is_private" { 
   type = bool
   default = false
   description = "Select false for Public_LB or select true for Private_LB"
 }

 variable "app_lb_lb_shape"{
     type = string
     default = "flexible"
     description = "Select load balancer shape"
 }
 variable "app_lb_minimum_bandwidth_in_mbps" {
    type = string
    default = "10"
    description = "Select the minimum bandwidth in mbps"
 }
 variable "app_lb_maximum_bandwidth_in_mbps" {
     type = string
     default = "100"
     description = "Select the maximum bandwidth in mbps"
 }

#############################################
# Application  Load Balancer Listener Variables
#############################################

 variable "app_lb_listener_display_name" {
    type = string
    default = "stgdev_db_listener"
    description = "Name for the Listener"
 }

 variable "app_lb_listener_protocol" {
     type = string
     default = "TCP"
     description = "Select Listener Protocol"
 }

 variable "app_lb_listener_port" {
     type = string
     default = "1522"
     description = "Select Listener Port"
 }

###################################################
# Application  Load Balancer Backend Server Variables
###################################################

variable "app_lb_backend_weight" {
  type = string
  default = "1"
  description = "Network load balancing backend weight assigned to the server"
}

variable "app_lb_backend_port" {
  type = string
  default = "1522"
  description = "Network load balancing backend port"
}

variable "app_lb_backend_ip_address" {
  type = string
  default = "10.97.5.209"
  description = "IP Address of ATP"
}


###############################################
# Application  Load Balancer Backend Set Variables
###############################################

variable "app_lb_load_balancing_policy" {
    type = string
    default = "ROUND_ROBIN"
    description = "Select load balancing policy"
 }
 variable "app_lb_backend_set_display_name" {
    type = string
    default = "alb_backend_set"
    description = "Name for the Backend Set"
 }
 variable "app_lb_backend_set_protocol" {
     type = string
     default = "TCP"
     description = "Select Backend Set Protocol"
 }
 variable "app_lb_backend_set_port" {
     type = string
     default = "1522"
     description = "Select Backend Set Port"
 }

 variable "app_lb_backend_set_interval_ms" {
     type = string
     default = "10000"
     description = "Interval between health checks, in milliseconds"
 }

 variable "app_lb_backend_set_timeout_in_millis" {
     type = string
     default = "3000"
     description = "Maximum time, in milliseconds, to wait for a reply to a health check"
 }   

 variable "app_lb_backend_set_retries" {
     type = string
     default = "3"
     description = "Number of retries; he number of retries to attempt before a backend server is considered unhealthy"
 }

### END
