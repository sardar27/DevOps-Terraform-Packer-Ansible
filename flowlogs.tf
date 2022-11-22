resource "aws_flow_log" "example" {
  log_destination      = aws_s3_bucket.devopsvpcflowlogs.arn
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.default.id
}

resource "aws_s3_bucket" "devopsvpcflowlogs" {
  bucket = "devopsvpcflowlogs"
  depends_on = [
    aws_s3_bucket.devopsvpc1
  ]
}

resource "aws_s3_bucket" "devopsvpc1" {
  bucket = "devopsvpc1"
  depends_on = [
    aws_s3_bucket.devopsvpc2
  ]
}

resource "aws_s3_bucket" "devopsvpc2" {
  bucket = "devopsvpc2"
  depends_on = [
    aws_s3_bucket.devopsvpc3
  ]
}

resource "aws_s3_bucket" "devopsvpc3" {
  bucket = "devopsvpc3"
}