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


variable "wn-instance-types" {
  default = {
    dev  = ["t3a.medium"]
    prod = ["m5a.2xlarge"]
  }
  type = object({
    dev  = list(string)
    prod = list(string)
  })
}

variable "rds-instance-type" {
  default = {
    dev  = "db.t3.small"
    prod = "db.m6g.2xlarge"
  }
  type = object({
    dev  = string
    prod = string
  })
}

variable "eks-cluster-name" {
  default = "kube-wp"
  type    = string
}

variable "wn-disk-size" {
  default = 30
  type    = number
}


variable "stage" {
  default = "dev"
  type    = string
}