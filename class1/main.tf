
resource "aws_iam_user" "lb" {
  name = "loadbalancer"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer2"
}

resource "aws_iam_user" "lb4" {
  name = "loadbalancer4"
}

resource "aws_iam_user" "hello" {
  name = "kaizen"
}


