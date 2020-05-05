data "aws_ami" "amazon" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20200406.0-x86_64-ebs*"]
  }
}
resource "aws_instance" "jenkins_server" {
  ami                    = "${data.aws_ami.amazon.id}"
  instance_type          = "${var.instance_type}"
  availability_zone      = "${var.region}${var.az1}"
  vpc_security_group_ids = ["${aws_security_group.jenkins_sec.id}"]
  subnet_id              = "${aws_subnet.public-subnet-1.id}"
  key_name               = "${aws_key_pair.jenkin_task.key_name}"
  associate_public_ip_address = "true"
  tags                   = "${var.tags}"



  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }
    inline = [
      # java installation 
      "sudo yum install java-1.8.0-openjdk -y",
      # jenkins installation
      "curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo",
      "sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key",
      "sudo yum install jenkins -y",
      "sudo systemctl start jenkins",
      "sudo systemctl enable jenkins",
    ]
  }
}