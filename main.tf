provider "aws" {
  region     = "us-east-1"
  access_key = "your access key"
  secret_key = "your secret key"
}
# Create a VPC
resource "aws_vpc" "firstVpc" {
  cidr_block = "10.1.0.0/16"
  enable_dns_hostnames=true
  tags={
    
      Name="Devops-1-vpc"
  }
}

output "VPC1-Name" {
  value = "${aws_vpc.firstVpc.tags.Name}"
}
output "VPC1-Id" {
  value = "${aws_vpc.firstVpc.id}"
}

