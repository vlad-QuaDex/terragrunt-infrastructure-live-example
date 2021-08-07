variable "name"             { type = string }
variable "azs"              { type = list(string) }
variable "environment"      { type = string }
variable "cidr"             { type = string }
variable "private_subnets"  { type = list(string) }
variable "public_subnets"   { type = list(string) }

variable "database_subnets" {
  type    = list(string)
  default = []
}

variable "eip_count" { 
  type = number 
  default = 1
  }

variable "create_db_subnet_route_table" {
  type    = bool
  default = false
}

variable "reuse_nat_ips" {
  type    = bool
  default = true
}

variable "enable_nat_gateway" {
  type    = bool
  default = true
}

variable "single_nat_gateway" {
  type    = bool
  default = false
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_vpn_gateway" {
  type    = bool
  default = true
}

variable "public_subnet_tags" {
  type = map(string)
  default = {}
}
variable "private_subnet_tags" {
  type = map(string)
  default = {}
}