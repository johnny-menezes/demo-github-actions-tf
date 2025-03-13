####################################
####### Tags Variables #############
####################################
variable "provisioner" {
  description = "IAC language type"
  type        = string
  default     = "Terraform"
}

variable "repo" {
  description = "Repository of the application"
  type        = string
  default     = "GitHub"
}

variable "Environment"{
  description = "Environment of the application"
  type        = string
  default     = "Production"
}


variable "Customer"{
  description   = "Environment of the application"
  type          = string
  default       = "GoPoints"
}

variable "instance_type" {
  description   = "(Required) Shape Familia de máquina Ec2"
  type          = string
  
}

variable "subnet_id" {
  description   = "Subnet's que serão utilizado no Ec2"
  type          = list(string)  
}

variable "security_groups" {
  description   = "SG que serão utilizado no Ec2"
  type          = list(string)
}

variable "gateway_name" {
 description    = "(Required) Nome do gateway"
 type           = string
  
}

variable "gateway_timezone" {
    description = "(Required) Fuso horário para o gateway. O fuso horário é do formato GMT"
    type        = string
    default     = "GMT-3:00"
  
}

variable "gateway_type" {
    description = "Tipo do gateway"
    type        = string
    default     = "FILE_S3"
  
}

variable "client_list" {
  description   = "(Required) A lista de clientes que têm permissão para acessar o gateway de arquivo. A lista deve conter endereços IP válidos ou blocos CIDR válidos"
  type          = list(string)
  
}