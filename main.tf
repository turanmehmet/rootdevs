provider "aws" {
  region = var.region
}
## backend could be s3 bucket with dynamodb to lock the state file
# terraform {
#   backend "s3" {
#     bucket = "rootdev_mehmet_bucket"
#     key    = "rootdevs/dev/key"
#     region = "us-east-1"
#   }
# }
