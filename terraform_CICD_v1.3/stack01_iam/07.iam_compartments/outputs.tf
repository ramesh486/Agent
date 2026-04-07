output "nonprodhub" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprodhub_compartment_name,
    ocid        = module.nonprodhub.compartment_ocid,
  }
}

output "monitoring" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.monitoring_compartment_name,
    ocid        = module.monitoring.compartment_ocid,
  }
}



output "network" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.network_compartment_name,
    ocid        = module.network.compartment_ocid,
  }
}

output "security" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.security_compartment_name,
    ocid        = module.security.compartment_ocid,
  }
}

output "nonprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprod_compartment_name,
    ocid        = module.nonprod.compartment_ocid,
  }
}


output "nonprod_app" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprod_app_compartment_name,
    ocid        = module.nonprod_app.compartment_ocid,
  }
}

output "nonprod_db" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprod_db_compartment_name,
    ocid        = module.nonprod_db.compartment_ocid,
  }
}





