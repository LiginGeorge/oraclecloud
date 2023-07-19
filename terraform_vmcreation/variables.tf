# Data from terraform.tfvars file

variable "tenancy_ocid" {ocid1.tenancy.oc1..aaaaaaaabdkq3g5mapqktjl2migv4drby4zyjzvnvpgarillxu3id7vdp46a}
variable "region" {me-dubai-1}
variable "compartment_ocid" {ocid1.compartment.oc1..aaaaaaaamk7ggnd4wgvggynli33gqzvhia2moyeezxjhahllqegi7cy3ipzq}
variable "ssh_public_key" {ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC9/t52/9IW6Z27gJ7iMPK+Ogm0Een3pWzKHzvSNgUN1xlRbpZs4KrFr7ucqBm/qE/0eLA3Iaxgs+CNSbFtE8vlK5+ElPMara1CbGSePtMJGCbgCyq3nwxmxJA9w8n5AUX8mer0GmzM1GiCymQhDXTHR7VTUulL/mm+5hbeYhAAWWSh0ZgTAtiz1i1O5sm1C2deJDftGV/unhYUjIwUgEELR/lyoExEFe71n7OLBemYuXs5GvE9GRpdXKymSR9htwLyW4QYIoIJiZ11jDSyZP2j4c17longw9uO6J4L+CKfv7okxjlI69VYNXGrwi3jPW/Hxc/Lbv2nJp2fLviOsLK/ root@bhmansrv01.biohub.local}

# Choose an Availability Domain
variable "AD" {
  default = "1"
}

# VCN variables
variable "vcn_cidr" {
  default = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS label"
  default     = "vcn01"
}

variable "dns_label" {
  description = "Subnet DNS Label"
  default     = "subnet"
}

# OS Image

variable "image_operating_system" {
  default = "Oracle Linux"
}
variable "image_operating_system_version" {
  default = "8"
}

### Compute Shape

variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard2.1"
}

