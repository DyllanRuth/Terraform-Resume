/* Modules go here.
module "name" {
  
}
*/

resource "aws_s3_bucket" "storage_bucket" {
  bucket = "storage-bucket-${var.env}"

  tags = {
    Name        = "My bucket"
    Environment = var.env
    Region      = var.region
  }
}
