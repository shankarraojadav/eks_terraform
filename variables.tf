variable "cluster_name" {
  type = string
  default = "my-eks-cluster"
}

variable "cluster_version" {
  type = number
  default = 1.25
}

variable "region" {
  type = string
  default = "ap-south-1"
}

variable "availability_zones" {
  type = list
  default = ["ap-south-1a", "ap-south-1b"]
}

variable "team-ips" {
  default = [
    "1.1.1.1/32",
    "8.8.8.8/32"
  ]
  type = list(string)
}
