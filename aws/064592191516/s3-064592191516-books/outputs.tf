output "aws_s3_bucket_books" {
  value = aws_s3_bucket.books.bucket
}
output "aws_s3_bucket_books_arn" {
  value = aws_s3_bucket.books.arn
}