#resource "aws_dynamodb_table" "terraform_locking" {
#  name         = "devops28terraformlocks"
#  billing_mode = "PAY_PER_REQUEST"
#  hash_key     = "LockID"
#
#  attribute {
#    name = "LockID"
#    type = "S"
#  }
#}