output "jenkins_site" {
  value = " http://${aws_route53_record.jenkins.name}:8080"
}

output "jenkins_password" {
  value = "check the password above"
}
