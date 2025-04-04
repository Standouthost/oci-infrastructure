resource "oci_core_instance" "vm1" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = var.image_source_ocid
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  display_name = "vm1.soh.re"
}

resource "oci_core_instance" "vm2" {
  availability_domain = var.availability_domain
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = var.image_source_ocid
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  display_name = "vm2.soh.re"
}
