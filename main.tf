##backend
module "backend_vpc" {
  source     = "./modules/backend"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "rossenzii-backend"
}
## db
module "dynamodb_lock_table" {
  source     = "./modules/dynamodb"
  table_name = "terraform-lock71"
  hash_key   = "LockID71"
}

##s3
module "s3_backend" {
  source = "./modules/s3"

  bucket_name = "bucket-ce7"
  tags = {
    Name = "terraform test"
  }
}