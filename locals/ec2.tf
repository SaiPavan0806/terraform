resource "aws_instance" "terraform" {
  ami           = local.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids =[aws_security_group.allow_all.id]
  tags = local.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name   = "${local.common_name}-allow-sg"

#  -- Outgoing traffic rule --
  egress {
    from_port       =  var.egress_from_port
    to_port         = var.engress_to_port
    protocol        = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr # open to internet
    }
#  -- Incoming traffic rule --
   ingress {
    from_port       = var.ingress_from_port
    to_port         = var.ingress_to_port
    protocol        = var.protocol # -1 means all protocols
    cidr_blocks      = var.cidr #open to internet
    }
  tags = merge(
    var.common_tags, 
   {
        Name = "${local.common_name}-local-demo"
    }
)
}