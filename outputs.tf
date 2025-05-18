output "private_instance_id" {
  value = aws_instance.ec2_private.id
}

output "s3_bucket_name" {
  value = aws_s3_bucket.secure_bucket.id
}
