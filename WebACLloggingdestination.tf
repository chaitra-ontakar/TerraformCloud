resource "aws_wafv2_web_acl_logging_configuration" "weblogging" {
  log_destination_configs = [aws_s3_bucket.Bucket]
  resource_arn            = aws_wafv2_web_acl.webacl.arn
  redacted_fields {
    single_header {
      name = "user-agent"
    }
  }
}
