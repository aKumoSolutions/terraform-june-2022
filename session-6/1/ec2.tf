resource "aws_instance" "main" {
  count                  = 1
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.main.id]
  key_name               = var.key_name
  tags = {
    Name  = "${var.env}-instance"          # dev-instance, qa-instance
    Name2 = format("%s-instance", var.env) # dev-instance, qa-instance
  }
}
resource "aws_security_group" "main" {
  name        = "${var.env}-instance-sg"
  description = "This is a sg for my EC2"
}

resource "aws_security_group_rule" "ingress_rule" {
  count             = length(var.ingress_ports)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index) # count.index = 0, 1, 2
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}
# for_each
# dynamic resource creation 

resource "aws_security_group_rule" "egress_rule" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}