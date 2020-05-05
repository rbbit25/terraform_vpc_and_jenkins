resource "aws_subnet" "private-subnet-1" {
  cidr_block        = "${var.private_subnet_1_cidr}"
  vpc_id            = "${aws_vpc.task.id}"
  availability_zone = "${var.region}${var.az1}"

  tags = "${var.tags}"
}

resource "aws_subnet" "private-subnet-2" {
  cidr_block        = "${var.private_subnet_2_cidr}"
  vpc_id            = "${aws_vpc.task.id}"
  availability_zone = "${var.region}${var.az2}"

  tags = "${var.tags}"
}

resource "aws_subnet" "private-subnet-3" {
  cidr_block        = "${var.private_subnet_3_cidr}"
  vpc_id            = "${aws_vpc.task.id}"
  availability_zone = "${var.region}${var.az3}"
  tags              = "${var.tags}"
}
