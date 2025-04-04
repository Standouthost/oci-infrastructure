resource "oci_core_instance" "vm1" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[0].name
  compartment_id      = var.compartment_ocid
  shape               = "VM.Standard.E2.1.Micro"

  create_vnic_details {
    subnet_id = var.subnet_ocid
  }

  source_details {
    source_type = "image"
    source_id   = data.oci_core_images.ubuntu_2404.images[0].id
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
    source_id   = data.oci_core_images.ubuntu_2404.images[0].id
  }

  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }

  display_name = "crossplane-vm2"
}

data "oci_identity_availability_domains" "ADs" {
  compartment_id = var.tenancy_ocid
}

data "oci_core_images" "ubuntu_2404" {
  compartment_id = var.compartment_ocid

  # OCI requires that if you filter by display_name, you must not filter by anything else.
  display_name   = "Canonical-Ubuntu-24.04-Minimal-2025.03.28-0"

  sort_by        = "TIMECREATED"
  sort_order     = "DESC"
}
