variable compartment_ocid {} 
variable notification_topic_name {}
variable notification_topic_description {}

variable "project_tag" {
  type = map
  default = {
    definedTags = {}
    freeformTags = {}
  }
}
