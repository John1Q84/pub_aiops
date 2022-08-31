variable "vpc_ip_range" {
  type = map(string)
  default = {
    "apne1" = "10.0.0.0/16"
    "apne2" = "10.1.0.0/16"
    "use1"  = "10.2.0.0/16"
    "use2"  = "10.3.0.0/16"
    "euw1"  = "10.4.0.0/16"
  }

}
