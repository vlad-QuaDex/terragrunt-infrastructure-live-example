# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "prod"
  aws_account_id = 328980876801
  aws_profile    = "ctl-prod"
}
