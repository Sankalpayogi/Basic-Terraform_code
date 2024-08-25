terraform {
 backend "s3" {
   bucket = "prafulla-terraform-artifacts"
   key    = "prafulla@23"
   region = "ap-south-1"
   encrypt = true
   dynamodb_table = "terraform-state-lock-dynamo"
   }
 }

