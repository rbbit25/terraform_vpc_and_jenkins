resource "aws_vpc" "task" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  tags                 = "${var.tags}"
}
