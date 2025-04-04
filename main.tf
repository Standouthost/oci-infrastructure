resource "oci_core_instance" "vm1" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaxmirlvvwnhwrg4lcfcwqd327nhkduwd6xyniamqnjjq2wq62c6wq"
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  display_name = "crossplane-vm1"
}

resource "oci_core_instance" "vm2" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.eu-frankfurt-1.aaaaaaaaxmirlvvwnhwrg4lcfcwqd327nhkduwd6xyniamqnjjq2wq62c6wq"
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  display_name = "crossplane-vm2"
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}
