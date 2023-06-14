resource "aws_wafv2_web_acl" "webacl" {
  name        = "managed-rule-MyWeb"
  scope       = "REGIONAL"

  default_action {
    allow {}
  } 

    
    visibility_config {
      cloudwatch_metrics_enabled = false
      metric_name                = "friendly-rule-metric-name"
      sampled_requests_enabled   = false
    }
}