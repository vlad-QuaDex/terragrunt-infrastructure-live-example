# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "stage"
  aws_account_id = 797900423612
  aws_profile    = "ctl-stage"
}
