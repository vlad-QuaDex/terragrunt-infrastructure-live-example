locals {
  # Automatically load environment-level variables
  environment_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))

  # Extract out common variables for reuse
  env = local.environment_vars.locals.environment
}

# Terragrunt will copy the Terraform configurations specified by the source parameter, along with any files in the
# working directory, into a temporary folder, and execute your Terraform commands in that folder.
terraform {
  source = "${path_relative_from_include()}/modules/vpc"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
inputs = {
  name            = "shared-vpc"
  environment     = local.env
  eip_count       = 0

  azs             = ["ca-central-1a", "ca-central-1b"]
  cidr            = "10.3.0.0/16"

  public_subnets  = ["10.3.128.0/20", "10.3.144.0/20"]
  private_subnets = ["10.3.0.0/19", "10.3.32.0/19"]
  database_subnets= []

  enable_nat_gateway =  true 
  single_nat_gateway =  true 
  enable_vpn_gateway =  false
  enable_dns_hostnames =  false
  enable_dns_support   =  false

}
