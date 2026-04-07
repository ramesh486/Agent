resource "oci_vulnerability_scanning_host_scan_recipe" "test_host_scan_recipe" {
    #Required
    agent_settings {
      #Required
      scan_level = var.scan_level1 #"NONE"

      #Optional
      agent_configuration {
        #Required
        vendor = var.vendor #"OCI"

        #Optional
        cis_benchmark_settings {

          #Optional
          scan_level = var.scan_level2 #"NONE"
        }

        #Optional
        vendor_type = var.vendor_type #"OCI"
      }
    }
    compartment_id = var.compartment_ocid
    port_settings {
      #Required
      scan_level = var.scan_level3 #"NONE"
    }
    schedule {
      #Required
      type = var.type #"DAILY"

      #Optional
      day_of_week = var.day_of_week #"SUNDAY"
    }

    #Optional
    display_name = var.display_name # "TestHostScanRecipe"
}
