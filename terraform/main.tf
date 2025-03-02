provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "devops_bucket" {
  bucket = "your-devops-bucket"
}

resource "aws_iam_role" "jenkins_role" {
  name = "jenkins-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
