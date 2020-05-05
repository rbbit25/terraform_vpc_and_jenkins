# resource "null_resource" "jenkins_pass" {
#   triggers = {
#     always_run = "${timestamp()}"
#   }
#   depends_on = ["aws_route53_record.jenkins"]
#   provisioner "file" {
#     connection {
#       host        = "jenkins.safedevops.com"
#       type        = "ssh"
#       user        = "ec2-user"
#       private_key = "${file("~/.ssh/id_rsa.pub")}"
#     }
#     source      = "~/.ssh"
#     destination = "/tmp/"
#   }
#   provisioner "remote-exec" {
#     connection {
#       host        = "jenkins.safedevops.com"
#       type        = "ssh"
#       user        = "ec2-user"
#       private_key = "${file("~/.ssh/id_rsa.pub")}"
#     }
#     inline = [
#       "echo -e $(tput setaf 1 )'Jenkins Passwd is: '$(tput sgr0) $(tput setaf 2)`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`$(tput sgr0)",
#       "sudo cp -r /tmp/.ssh/  /var/lib/jenkins",
#       "sudo chmod 600 /var/lib/jenkins/.ssh/id_rsa",
#       "sudo chown -R jenkins:jenkins /var/lib/jenkins/.ssh",
#     ]
#   }
# }

