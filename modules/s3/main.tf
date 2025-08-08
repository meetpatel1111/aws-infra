resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name}-${var.environment}"

  tags = {
    Name        = "My bucket"
    Environment = var.environment
  }
}
