resource "aws_subnet" "public-subnet-1" {
  cidr_block              = "${var.public_subnet_1_cidr}"
  vpc_id                  = "${aws_vpc.task.id}"
  availability_zone       = "${var.region}${var.az1}"
  map_public_ip_on_launch = true
  tags                    = "${var.tags}"
}

resource "aws_subnet" "public-subnet-2" {
  cidr_block              = "${var.public_subnet_2_cidr}"
  vpc_id                  = "${aws_vpc.task.id}"
  availability_zone       = "${var.region}${var.az2}"
  map_public_ip_on_launch = true
  tags                    = "${var.tags}"
}

resource "aws_subnet" "public-subnet-3" {
  cidr_block              = "${var.public_subnet_3_cidr}"
  vpc_id                  = "${aws_vpc.task.id}"
  availability_zone       = "${var.region}${var.az3}"
  map_public_ip_on_launch = true
  tags                    = "${var.tags}"
}
