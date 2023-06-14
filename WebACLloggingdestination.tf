resource "aws_wafv2_web_acl_logging_configuration" "weblogging" {
  log_destination_configs = [aws_kinesis_firehose_delivery_stream.extended_s3_stream.arn]
  resource_arn            = aws_wafv2_web_acl.webacl.arn
  redacted_fields {
    single_header {
      name = "user-agent"
    }
  }
}
