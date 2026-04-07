variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "sender_email_address" {}
variable "email_domain_name" {}   
variable "dkim_selector" {}
variable "project_tag" { 
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}