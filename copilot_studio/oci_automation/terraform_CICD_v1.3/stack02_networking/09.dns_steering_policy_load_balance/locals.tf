 
locals{
    network_compartment_ocid         = data.oci_identity_compartments.network_compartment.compartments[0].id
  
}

locals {
  dns_answers = [
    {
      "is_disabled"     = "false"
      "name"            = "answer_1"
      "rtype"           = "A"
      "rdata"           = "172.22.0.1"
    },
    {
      "is_disabled"     = "false"
      "name"            = "answer_2"
      "rtype"           = "A"
      "rdata"           = "172.22.0.2"
    },
    {
      "is_disabled"     = "false"
      "name"            = "answer_3"
      "rtype"           = "A"
      "rdata"           = "172.22.0.3"
    },
    {
      "is_disabled"     = "false"
      "name"            = "answer_4"
      "rtype"           = "A"
      "rdata"           = "172.22.0.4"
    }
  ]

  filter_rule_default_answer_data = {
  	answer_condition = "answer.isDisabled != true"
  	should_keep      = "true"
  	description      = "Removes disabled answers."
  }

  limit_rule_variables = {
  	default_count      = "4"
  	rule_type          = "LIMIT"
  }

  default_answer_data = [
    {
      "answer_condition"        = "answer.name == 'answer_1'"
      "answer_condition_value"  = "10"
    },
    {
      "answer_condition"        = "answer.name == 'answer_2'"
      "answer_condition_value"  = "10"
    },
    {
      "answer_condition"        = "answer.name == 'answer_3'"
      "answer_condition_value"  = "10"
    },
    {
      "answer_condition"        = "answer.name == 'answer_4'"
      "answer_condition_value"  = "10"
    }
  ]
}
