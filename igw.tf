resource "aws_internet_gateway" "task_igw" {
  vpc_id = "${aws_vpc.task.id}"

  tags = "${var.tags}"
}
