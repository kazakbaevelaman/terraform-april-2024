resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group" "developers2" {
  name = "hello"
}

resource "aws_iam_group" "developers3" {
  name = "developers3"
}

# # adds user to the group 
# resource "aws_iam_group_membership" "team" {
#   name = "tf-testing-group-membership"

#   users = [
#     for i in aws_iam_user.lb : i.name
#   ]

#   group = aws_iam_group.developers.name
# }