resource "aws_route_table" "route_task_public" {
  vpc_id = "${aws_vpc.task.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.task_igw.id}"
  }

  tags = "${var.tags}"
}

resource "aws_route_table_association" "pub_subnet_1_route_assoc" {
  subnet_id      = "${aws_subnet.public-subnet-1.id}"
  route_table_id = "${aws_route_table.route_task_public.id}"
}

resource "aws_route_table_association" "pub_subnet_2_route_assoc" {
  subnet_id      = "${aws_subnet.public-subnet-2.id}"
  route_table_id = "${aws_route_table.route_task_public.id}"
}

resource "aws_route_table_association" "pub_subnet_3_route_assoc" {
  subnet_id      = "${aws_subnet.public-subnet-3.id}"
  route_table_id = "${aws_route_table.route_task_public.id}"
}
