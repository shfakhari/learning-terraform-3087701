variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI"
  type = object {{
    name  = string
    owner = string
  }}

  default = {
    name   = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
    owner = "099720109477" # Canonical
  }
}

variable "environment" {
  description = "Deployment environment"
  type = object {{
    name           = string
    network_prefix = string
  }}
  default = {
    name           = "dev"
    network_prefix = "10.0"
  }
}

variable "min_size"{
  description = "Minimum number of instances in the ASG"
  default = 1
}

variable "max_size"{
  description = "Maximum number of instances in the ASG"
  default = 2
}
