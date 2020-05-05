resource "aws_route53_record" "jenkins" {
  zone_id = "Z01131383UY10PQUY6PSI"
  name    = "jenkins.safedevops.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.jenkins_server.public_ip}"]
}
