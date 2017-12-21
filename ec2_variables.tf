variable "subnet_id" {
    description = "Subnet ID to use in VPC"
    default = "subnet-5524131f"
}

variable "vpc_id" {
  description = "The VPC subnet the instance(s) will go in"
  default = "vpc-cf5caba6"
}

variable "key_name"{
  description = "The key file to associate with the new instance"
  default = "Rahul-Terraform"
}

variable "instance_type"{
  description = "The type and size of instance to create"
  default="t2.micro"
}

variable "ami"{
  description="The ami to use in creating the instance"
  default="ami-cfdafaaa"
}

variable "names"{type = "list"}
variable "owner"{}
variable "env"{}
variable "project"{
  default="test"
}
