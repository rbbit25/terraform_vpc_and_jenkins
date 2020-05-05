resource "null_resource" "jenkins_passwd" {
  depends_on = ["aws_route53_record.jenkins"]

  triggers = {
    always_run = "${timestamp()}"
  }

  provisioner "remote-exec" {
    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = "${file("~/.ssh/id_rsa")}"
      host        = "${aws_instance.jenkins_server.public_ip}"
    }

    inline = [
      "echo -e $(tput setaf 1 )'Jenkins Passwd is: '$(tput sgr0) $(tput setaf 2)`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
    ]
  }
}
