resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-${var.env}"

  tags = {
    Name        = "My bucket"
    Environment = var.env
    Region      = var.region
  }
}

