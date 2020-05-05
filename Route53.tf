resource "aws_route53_record" "jenkins" {
  zone_id = "${var.zone_id}"
  name    = "jenkins.safedevops.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.jenkins_server.public_ip}"]
}
