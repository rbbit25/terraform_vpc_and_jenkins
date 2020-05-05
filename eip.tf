resource "aws_eip" "jenkins_task_eip" {
  vpc = true

  tags = {
    Name = "jenkins_eip"
  }
}
