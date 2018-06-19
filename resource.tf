resource "google_compute_network" "our_dev" {
    name = "devnet"
	auto_create_subnetworks = true
}

resource "aws_vpc" "example_vpc" {
    cidr_block = "10.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support = true
	tags {
	    Name = "Terrafor_VPC"
	}
}