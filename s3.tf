resource "aws_s3_bucket" "backend_s3" {
  bucket = "slbucketremotebackend"

  tags = {
    Name        = "slbucketremotebackend"
    Environment = "Dev"
  }
}