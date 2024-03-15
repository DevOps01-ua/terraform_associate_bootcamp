{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Resource": "arn:aws:logs:${region}:${account_id}:*",
      "Effect": "Allow"
    },
    {
      "Action": [
        "dynamodb:DeleteItem",
        "dynamodb:GetItem",
        "dynamodb:PutItem",
        "dynamodb:Scan",
        "dynamodb:UpdateItem"
      ],
      "Resource": "arn:aws:dynamodb:${region}:${account_id}:table/${table_name}",
      "Effect": "Allow"
    }
  ]
}
