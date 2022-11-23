resource "aws_s3_bucket" "b" {
  bucket = "devops28metaargs001"

  tags = {
    Name        = "devops28metaargs001"
    Environment = "Dev"
  }
}