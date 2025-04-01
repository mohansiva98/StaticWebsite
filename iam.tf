resource "aws_iam_policy" "ec2_full_access" {
  name        = "EC2FullAccessPolicy"
  description = "Allows full access to EC2 resources"
  
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "ec2:CreateVpc",
          "ec2:DescribeVpcs",
          "ec2:DeleteVpc",
          "ec2:CreateSubnet",
          "ec2:DescribeSubnets",
          "ec2:DeleteSubnet",
          "ec2:CreateInternetGateway",
          "ec2:AttachInternetGateway",
          "ec2:DeleteInternetGateway"
        ]
        Resource = "*"
      }
    ]
  })
}
resource "aws_iam_user_policy_attachment" "attach_ec2_policy" {
  user       = "mohan"
  policy_arn = aws_iam_policy.ec2_full_access.arn
}

