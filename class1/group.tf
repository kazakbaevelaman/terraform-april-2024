resource "aws_iam_group" "group1" {
  name = "developers"
}

resource "aws_iam_group" "group2" {
  name = "devops"
}


# will add users to the group 
resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    aws_iam_user.lb.name,
    aws_iam_user.lb2.name,
    aws_iam_user.lb4.name,
  ]

  group = aws_iam_group.group2.name
}