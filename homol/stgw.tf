################### Ec2 Storage Gateway ###############
#######################################################                      

#data "aws_ami" "amazon_linux" {
#  most_recent = true
#  owners      = ["amazon"]
#
#  filter {
#    name   = "name"
#    values = ["amzn2-ami-hvm-2.*"]
#  }
#
#  filter {
#    name   = "virtualization-type"
#    values = ["hvm"]
#  }
#}
#
#resource "aws_instance" "ec2_stgw" {
#  ami             = data.aws_ami.amazon_linux.id
#  instance_type   = var.instance_type
#  subnet_id       = [var.subnet_id]
#  security_groups = var.security_groups
#
#  tags = {
#    Name = "StorageGatewayInstance"
#    Customer = var.Customer
#    Environment = var.Environment
#
#  }
#}

resource "aws_storagegateway_gateway" "stgw_gopoints" {
  gateway_name        = var.gateway_name
  gateway_timezone    = var.gateway_timezone
  gateway_type        = var.gateway_type
  #activation_key      = "YOUR_ACTIVATION_KEY"
  tags = {
    Name = "StorageGatewayInstance"
    Customer = var.Customer
    Environment = var.Environment
  }
}

#resource "aws_storagegateway_nfs_file_share" "gopoints_fileshare" {
#  gateway_arn         = aws_storagegateway_gateway.stgw_gopoints.arn
#  location_arn        = aws_s3_bucket.s3_stgw.arn
#  role_arn            = aws_iam_role.stgw_gopoints_us_east-1.arn
#  client_list         = ["0.0.0.0/0"] ## Definir os endereços IP client Acess ##
#  default_storage_class = "S3_STANDARD"
#  guess_mime_type_enabled = true
#  tags = {
#    Name = "" ## A definir ##
#  }
#}
#
#resource "aws_s3_bucket" "s3_stgw" {
#  bucket = "example-bucket" ## Definir bucket name ##
#}
#
#resource "aws_iam_role" "stgw_gopoints_us_east-1" {
#  name = "storage_gateway_gopoints_us_east-1"
#  assume_role_policy = jsonencode({
#    Version = "2012-10-17"
#    Statement = [{
#      Action = "sts:AssumeRole"
#      Effect = "Allow"
#      Principal = {
#        Service = "storagegateway.amazonaws.com"
#      }
#    }]
#  })
#}