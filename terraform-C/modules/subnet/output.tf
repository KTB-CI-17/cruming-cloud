output "subnet_fe_id" {
  description = "프론트 서브넷 ID"
  value       = aws_subnet.modules_subnet_fe.id
}

output "subnet_be_id" {
  description = "백 서브넷 ID"
  value       = aws_subnet.modules_subnet_be.id
}

output "subnet_temp_id" {
  description = "백 서브넷 ID"
  value       = aws_subnet.modules_subnet_temp.id
}