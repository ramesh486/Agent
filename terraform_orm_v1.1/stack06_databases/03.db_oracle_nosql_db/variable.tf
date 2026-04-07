variable "compartment_ocid" {
    type         = string
    default      = ""
    description  = "Enter the Compartment ocid"
}

variable "region"{
    type = string
    default = ""
    description = "Enter the Region Name"
}

variable  "table_ddl_statement" {
    type = string
    default = "CREATE TABLE IF NOT EXISTS TEST_TABLE(id INTEGER, name STRING, age STRING, PRIMARY KEY(id))"
    description = "Provide table DDL statements"

}
variable  table_name {
    type = string
    default = "TEST_TABLE"
    description = "Provide table name"
}

variable  "max_read_units" {
    type = number
    default = 50
    description = "Provide maximum read units"

}
variable  "max_write_units" {
    type = number
    default = 50
    description = "Provide maximum write units"

}
variable  "max_storage_in_gbs" {
    type = number
    default = 1
    description = "Provide maximum storage in gbs"
}

