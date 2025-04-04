variable "tenancy_ocid" {
  description = "OCI Tenancy OCID"
  type        = string
}

variable "user_ocid" {
  description = "OCI User OCID"
  type        = string
}

variable "fingerprint" {
  description = "API Key fingerprint"
  type        = string
}

variable "private_key_path" {
  description = "Path to private API key"
  type        = string
}

variable "region" {
  description = "OCI Region"
  type        = string
}

variable "compartment_ocid" {
  description = "Compartment OCID to deploy into"
  type        = string
}

variable "subnet_ocid" {
  description = "Subnet OCID to attach instances"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key to inject into instance metadata"
  type        = string
}

