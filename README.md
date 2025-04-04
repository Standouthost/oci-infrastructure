# Oracle Cloud Free Tier VM Deployment

This Terraform configuration provisions **two x86 Oracle Linux VMs** under the Oracle Free Tier limits using the `VM.Standard.E2.1.Micro` shape.

## Prerequisites

- Oracle Cloud account
- SSH keypair
- A subnet in your compartment

## Variables

Pass these in via a `terraform.tfvars` file or set them via Crossplane's Workspace `vars`.

## Outputs

This module does not define any outputs.

## Usage (Crossplane)

Reference this Git repo in a `Workspace`:

```yaml
module:
  url: git::https://github.com/yourname/oracle-vms-tf.git//?ref=main
```
