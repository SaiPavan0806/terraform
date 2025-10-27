variable "project" {
   default = "roboshop"
}

variable "environment" {
   default = "dev"
 }

# variable "common name" {
#    default = "${var.project}-${var.environment}"
# }
variable "ami_id" {
    type = string
    default = "aws_ami.joindevops.id"
}

 variable "instance_type" {
    type = string
    default = "t3.micro"
 }

 variable "common_tags"{
    type = map
    default ={
        terraform = "true"
        project = "roboshop"
        environment = "dev"
    }
 }

 variable "sg_name" {
    type = string
    default = "allow-all"
    description = "Security group name to attach to EC2 instance"
 }

 variable "cidr" {
    type = list
    default = ["0.0.0.0/0"]
 }

 variable "ingress_from_port"{
    default = 0
 }

 variable "egress_from_port"{
    default = 0
 }

 variable "ingress_to_port"{
    type = number
    default = 0
 }

 variable "engress_to_port"{
    type = number
    default = 0
 }

 variable "protocol" {
    type = string
    default = "-1"
 }