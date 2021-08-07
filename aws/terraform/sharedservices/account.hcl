# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  account_name   = "shared"
  aws_account_id = 647799601833
  aws_profile    = "CTL-shared"
}
