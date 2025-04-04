terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.32.0"
    }
  }

  required_version = ">= 1.3"
}
