resource "oci_core_subnet" "subnet1" {
    cidr_block = "10.0.1.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_virtual_network.vcn1.id
    display_name = "demosubnet"
    dns_label = "subnetdemo"
    
  
}

output "subnet1"{
    value=oci_core_subnet.subnet1.cidr_block
}

resource "oci_core_subnet" "subnet2" {
    cidr_block = "10.0.2.0/24"
    compartment_id = var.compartment_ocid
    vcn_id = oci_core_virtual_network.vcn1.id
    display_name = "subnet2"
    dns_label = "subnet2"
    
  
}

output "subnet2"{
    value=oci_core_subnet.subnet2.cidr_block
}