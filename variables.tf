variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "name filters for ami"
  type = object({
    name  = string
    owner = string
  })

  default = {
    name = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnam
  } 
}


variable "environment" { 
  description = "dev envs"

  type = object({
    name   = string
    network_prefix = string
  })

default = {
  name = "dev"
  network_prefix = "10.0"
  }
}

variable "min_size" {
  description = "minimum size of instance for ASG
  default = 1
}

variable "max_size" {
  description = "maximum size of instance for ASG
  default = 2
}