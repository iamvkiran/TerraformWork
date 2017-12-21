resource "aws_security_group" "web" {
  name = "${var.security_group_name}"
  description = "${var.security_group_description}"
  ingress {
    from_port = "${var.ingress_from_port}"
    to_port = "${var.ingress_to_port}"
    protocol = "tcp"
    cidr_blocks = "${var.ingress_cidr}"
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  vpc_id = "${var.vpc_id}"
}