resource "aws_key_pair" "jenkin_task" {
  key_name   = "rbbit_jenkin_task"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}
