resource "oci_core_virtual_network" "vcn1" {
  cidr_block = "10.0.0.0/16"
  dns_label = "vcnrm"
  compartment_id = var.compartment_ocid
  display_name = "vcnrm"
}

output "vcn" {
value = oci_core_virtual_network.vcn1.cidr_block
}