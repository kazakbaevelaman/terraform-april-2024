# creates multiple users 
# resource "aws_iam_user" "lb" {
#   for_each = toset(["kaizen","kaizen2","kaizen3"])
#   name = each.key
# }