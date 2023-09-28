output "bucket_name" {
  description="Bucket name for our static website hosting"
  value=module.terrahouse_aws.bucket_name
}

output "s3_website_endpoint" {
    description = "S3 Static Website Hosting"
    value=module.terrahouse_aws.s3_website_endpoint
}