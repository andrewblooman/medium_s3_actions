module "s3_bucket" {
  source      = "../../modules/s3_bucket" # Path to the module
  bucket_name = "medium-example-s3-bucket"
  bucket_tags = {
    "Data Classification" = "Financial Data"
    "Data Owner"          = "CFO"
  }
}