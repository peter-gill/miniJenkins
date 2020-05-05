# miniJenkins
#
# Uses Packer to create an AMI with Jenkins installed:
# > packer build -var-file=variables.json template.json
#
# EC2 is create using AMI:
# > terraform apply
#
# Jenkins login: http://<IP address>:8080
#
