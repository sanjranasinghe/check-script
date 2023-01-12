variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "vpc_subnet_count" {
  type    = number
  default = 2
}

variable "project" {
  type    = string
  default = "MOS-Flight"
}

variable "common_tags" {
  type = map(any)
  default = {
    project = "MOS-Flight"
  }
}

variable "moresand_public_cidr_blocks" {
  type    = list(string)
  default = ["123.231.61.17"]
}

variable "mail_domain" {
  type    = string
  default = "example.example.com"
}

#variable "region" {
#  type = string
#}

#variable "ami_name" {
#  type = string
#}

variable "lunch_name" {
  type    = string
  default = "flighapi"
}

