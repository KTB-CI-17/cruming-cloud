variable "region" {
  description = "AWS 리전"
  type        = string
}



# VPC
variable "vpc_cidr" {
  description = "VPC의 CIDR 블록"
  type        = string
}

variable "vpc_name" {
  description = "VPC 이름"
  type        = string
}



# Internet Gateway
variable "igw_name" {
  description = "인터넷 게이트웨이 이름"
  type        = string
}



# Subnet
variable "subnet_fe" {
  description = "프론트 서브넷"
  type = object({
    cidr = string
    az   = string
    name = string
  })
}

variable "subnet_be" {
  description = "백 서브넷"
  type = object({
    cidr = string
    az   = string
    name = string
  })
}



# Nat Gateway
variable "nat_name" {
  description = "NAT 게이트웨이 이름"
  type        = string
}



# Route Table
variable "route_table_private_name" {
  description = "프라이빗 라우트 테이블 이름"
  type        = string
}



# Security Group
variable "sg_fe_name" {
  description = "프론트 보안 그룹 이름"
  type        = string
}

variable "sg_be_name" {
  description = "백 보안 그룹 이름"
  type        = string
}

variable "ingress_fe" {
  description = "프론트 인그레스 규칙"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "ingress_be" {
  description = "백 인그레스 규칙"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "egress" {
  description = "이그레스 규칙"
  type = object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  })
}



# Instance
variable "ami" {
  description = "인스턴스의 AMI ID"
  type        = string
}

variable "instance_type" {
  description = "인스턴스 유형"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH 키 이름"
  type        = string
  default     = "aws-ktb-key"
}

variable "instance_public_count" {
  description = "퍼블릭 인스턴스의 수"
  type        = number
}

variable "instance_private_count" {
  description = "프라이빗 인스턴스의 수"
  type        = number
}

variable "instance_fe_name" {
  description = "프론트 인스턴스 이름"
  type        = string
}

variable "instance_be_name" {
  description = "백 인스턴스 이름"
  type        = string
}

variable "s3_app_name" {
  description = "앱 전용 s3 이름"
  type        = string
}
