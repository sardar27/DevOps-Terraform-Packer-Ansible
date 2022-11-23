resource "aws_s3_bucket" "b" {
  bucket = "devops28metaargs"

  tags = {
    Name        = "devops28metaargs"
    Environment = "Dev"
  }
}