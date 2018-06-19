provider "google" {
    credentials = "${file("C:/repo/account.json")}"
	project = "innate-gizmo-187004"
	region = "asia-south1"
}

provider "aws" {
    region = "ap-south-1"
}

provider "azurerm" {
    subscription_id ="0"
	client_id = "1"
    client_secret = "2"
    tenant_id ="3"
}
 	