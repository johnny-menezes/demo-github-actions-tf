####################################
####### Tags Variables #############
####################################

variable "environment"{
    description = "Environment of the application"
    type        = string
    default     = "demo"
}

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

variable "vpc_id" {
    type = string
    default "vpc-05880c4fbc026e330"
}