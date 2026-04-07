output "prodhub" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.prodhub_compartment_name,
    ocid        = module.prodhub.compartment_ocid,
  }
}
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


output "nonprod_dev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprod_dev_compartment_name,
    ocid        = module.nonprod_dev.compartment_ocid,
  }
}

output "nonprod_tst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.nonprod_tst_compartment_name,
    ocid        = module.nonprod_tst.compartment_ocid,
  }
}

output "appdev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.appdev_compartment_name,
    ocid        = module.appdev.compartment_ocid,
  }
}

output "dbdev" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dbdev_compartment_name,
    ocid        = module.dbdev.compartment_ocid,
  }
}


output "apptst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.apptst_compartment_name,
    ocid        = module.apptst.compartment_ocid,
  }
}


output "dbtst" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dbtst_compartment_name,
    ocid        = module.dbtst.compartment_ocid,
  }
}

output "prod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.prod_compartment_name,
    ocid        = module.prod.compartment_ocid,
  }
}


output "appprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.appprod_compartment_name,
    ocid        = module.appprod.compartment_ocid,
  }
}


output "dbprod" {
  description = "compartment name, description, ocid, and parent ocid"
  value = {
    name        = var.dbprod_compartment_name,
    ocid        = module.dbprod.compartment_ocid,
  }
}
