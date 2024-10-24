resource "aws_instance" "modules_instance_public" {
  for_each = var.public_instances

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.security_group_ids
  associate_public_ip_address = each.value.associate_public_ip

  tags = {
    Name = each.value.instance_name
  }
}

resource "aws_instance" "modules_instance_private" {
  for_each = var.private_instances

  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = each.value.subnet_id
  vpc_security_group_ids = each.value.security_group_ids

  associate_public_ip_address = false

  tags = {
    Name = each.value.instance_name
  }
}