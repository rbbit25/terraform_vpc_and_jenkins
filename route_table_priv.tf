resource "aws_route_table" "route_task_private" {
  vpc_id = "${aws_vpc.task.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.task_nat_gw.id}"
  }

  tags = "${var.tags}"
}

resource "aws_route_table_association" "priv_subnet_1_route_assoc" {
  subnet_id      = "${aws_subnet.private-subnet-1.id}"
  route_table_id = "${aws_route_table.route_task_private.id}"
}

resource "aws_route_table_association" "priv_subnet_2_route_assoc" {
  subnet_id      = "${aws_subnet.private-subnet-2.id}"
  route_table_id = "${aws_route_table.route_task_private.id}"
}

resource "aws_route_table_association" "priv_subnet_3_route_assoc" {
  subnet_id      = "${aws_subnet.private-subnet-3.id}"
  route_table_id = "${aws_route_table.route_task_private.id}"
}
