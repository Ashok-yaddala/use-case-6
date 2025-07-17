package main

# Deny public-read ACLs on S3 buckets
deny[msg] {
  input.resource_type == "aws_s3_bucket"
  input.config.acl == "public-read"
  msg = sprintf("S3 Bucket '%s' should not have public-read ACL.", [input.name])
}