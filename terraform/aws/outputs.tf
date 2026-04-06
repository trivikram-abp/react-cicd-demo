output "production_cloudfront_url" {
  description = "CloudFront URL for the production environment"
  value       = "https://${aws_cloudfront_distribution.prod.domain_name}"
}

output "test_cloudfront_url" {
  description = "CloudFront URL for the test environment"
  value       = "https://${aws_cloudfront_distribution.test.domain_name}"
}

output "production_bucket" {
  description = "S3 bucket name for production"
  value       = aws_s3_bucket.prod.bucket
}

output "test_bucket" {
  description = "S3 bucket name for test"
  value       = aws_s3_bucket.test.bucket
}
