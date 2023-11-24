resource "aws_sns_topic" "user_updates" {
  name = "user-updates-topic"
}

resource "aws_sns_topic_subscription" "example" {
  topic_arn         = aws_sns_topic.user_updates.arn
  protocol          = "email"
  endpoint          = "test@example.com"
  endpoint_auto_confirms = true
}