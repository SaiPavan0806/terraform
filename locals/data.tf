data "aws_ami" "joindevops" {
    owners = ["973714476881"]
    most_recent      = true

    filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

output "amid_id"{
    value = data.aws_ami.joindevops.id
}

# data "aws_instance" "mysql" {
#   instance_id = "i-0924d6e18a7b6ea04"
# }

# output "mysql_info" {
#     value = data.aws_instance.mysql.public_ip
# }