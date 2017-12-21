variable "ingress_cidr"{
    type="list"
}

variable "ingress_from_port"{}

variable "ingress_to_port"{}

variable "security_group_name"{
    default = "TerraformSG"
}

variable "security_group_description"{
    default = "This is the terraform security group"
}