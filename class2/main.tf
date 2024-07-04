provider aws {
    region = "us-east-2"
}

# # upload key-pair
# resource "aws_key_pair" "deployer" {
#   key_name   = "deployer-key"
#   public_key = file("~/.ssh/id_rsa.pub")
# }

# # create s3 bucket
# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-test-elaman"
#   force_destroy = true
# }

# # upload file to s3
# resource "aws_s3_object" "object" {
#   depends_on = [ aws_s3_bucket.example ]
#   bucket = "my-tf-test-elaman"
#   key    = "main.tft"
#   source = "main.tf"
# }

# # Creates a unique bucket name beginning with the specified prefix.
# resource "aws_s3_bucket" "example" {
#   bucket_prefix = "kaizen-"
#   force_destroy = true
# }