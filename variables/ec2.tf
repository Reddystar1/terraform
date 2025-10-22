resource "aws_instance" "terraform-1" {
    ami = var.ami_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = var.ec2_tags
}

resource "aws_security_group" "allow_all" {
  name   = var.sg_name

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1" #all protocals
    cidr_blocks      = var.cidr
  }

   ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port 
    protocol         = var.protocal
    cidr_blocks      = var.cidr
  }

  tags = {
    name = "allow-all"
  }
}


