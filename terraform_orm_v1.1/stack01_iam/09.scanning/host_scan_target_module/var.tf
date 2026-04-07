variable "compartment_ocid" {}
variable "description" {}
variable "display_name1" {}
variable "host_scan_recipe_ocid" {}
variable "project_tag" {
	type = map
	default = {
		definedTags = {}
		freeformTags = {}
	}
}
