# miniJenkins
#
# The purpose of this repo is to build a simple Jenkins ec2 instance. It is
# achieved using packer to build the AMI with Jenkin installed and terraform to
# provision the AWS services; ec2; vpc; and security group etc.
#
# Command to use Packer to create an AMI with Jenkins installed:
# > packer build -var-file=variables.json template.json
#
# Command to use Terraform to create ec2 etc using packer create using AMI:
# > terraform apply
#
# Jenkins login: http://<IP address>:8080
#
# Note, set-up assumes secret key details are appropriately inputted.
#
