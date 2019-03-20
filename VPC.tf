provider "opentelekomcloud" {
  user_name   = "Terraform"
  password    = "Demo@pass123"
  tenant_name = "eu-de"
  domain_name = "OTC-EU-DE-00000000001000030390"
  auth_url    = "https://iam.eu-de.otc.t-systems.com:443/v3"
}

variable "vpc_name" {
  default = "testvpc2"
}

variable "vpc_cidr" {
  default = "192.168.0.0/16"
}

resource "opentelekomcloud_vpc_v1" "vpc_v1" {
  name = "${var.vpc_name}"
  cidr = "${var.vpc_cidr}"
}


