resource "aws_security_group" "allow_all" {
  name   = "sg"

   egress {
    from_port       = 0 #from port 0 t0 port 0 means it opens all the ports
    to_port         = 0
    protocol        = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # open to internet
    }

#  dynamic block starts here
   dynamic "ingress" {
    for_each = toset(var.ingress_ports)
    content {
        from_port       = ingress.value #f here ingress is special key word
        to_port         = ingress.value
        protocol        = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] #open to internet
    }
    }

   tags ={
    Name = "allow_all"
    }
}