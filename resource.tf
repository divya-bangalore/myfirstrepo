resource "google_compute_network" "our_dev" {
  name                    = "devnet"
  auto_create_subnetworks = true
}

resource "aws_vpc" "example_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "Terrafor_VPC"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block        = "${cidrsubnet(aws_vpc.example_vpc.cidr_block, 3, 1)}"
  vpc_id            = "${aws_vpc.example_vpc.id}"
  availability_zone = "ap-south-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block        = "${cidrsubnet(aws_vpc.example_vpc.cidr_block, 2, 2)}"
  vpc_id            = "${aws_vpc.example_vpc.id}"
  availability_zone = "ap-south-1b"
}

