resource "aws_instance" "web" {
  count = "${length(var.names)}"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  subnet_id = "${var.subnet_id}"
  ebs_block_device {
    device_name = "/dev/sda1"
    volume_type = "gp2"
    volume_size = 10
    delete_on_termination = true
  }
  tags {
    Name = "${element(var.names, count.index)}"
    Owner = "${var.owner}"
    Environment = "${var.env}"
    Project = "${var.project}"
  }
  vpc_security_group_ids = ["${aws_security_group.web.id}"]
}
