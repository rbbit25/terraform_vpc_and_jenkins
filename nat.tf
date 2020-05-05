resource "aws_nat_gateway" "task_nat_gw" {
  allocation_id = "${aws_eip.jenkins_task_eip.id}"
  subnet_id     = "${aws_subnet.public-subnet-1.id}"

  tags = "${var.tags}"

  depends_on = ["aws_eip.jenkins_task_eip"]
}
