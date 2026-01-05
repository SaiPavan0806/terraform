resource "aws_instance" "terraform" {
  for_each = var.instance
  ami           = "ami-09c813fb71547fc4f"
  instance_type = each.value
  vpc_security_group_ids =[aws_security_group.allow_all.id]

  tags = {
    Name = each.value
    terraform = "True"
  }
}

resource "aws_security_group" "allow_all" {
  name   = "sg"

   egress {
    from_port       = 0 #from port 0 t0 port 0 means it opens all the ports
    to_port         = 0
    protocol        = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # open to internet
    }

   ingress {
    from_port       = 0 #from port 0 t0 port 0 means it opens all the ports
    to_port         = 0
    protocol        = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] #open to internet
    }

   tags ={
    Name = "allow_all"
    }

}