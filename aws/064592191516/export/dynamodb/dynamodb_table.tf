resource "aws_dynamodb_table" "tfer--064592191516-lock-table" {
  attribute {
    name = "LockID"
    type = "S"
  }

  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  name         = "064592191516-lock-table"

  point_in_time_recovery {
    enabled = "false"
  }

  read_capacity  = "0"
  stream_enabled = "false"
  table_class    = "STANDARD"
  write_capacity = "0"
}
