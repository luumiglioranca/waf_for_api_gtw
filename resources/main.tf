###########################################################################################################################################
#
# WAFv2: Web ACL Regional - API LoadBalancer 
#
###########################################################################################################################################

resource "aws_wafv2_web_acl" "waf_for_api_gateway" {
  name        = var.web_acl_name
  description = var.account_description
  scope       = var.web_acl_scope

  default_action {
    allow {}
  }

  ################################################## RULE PRIORITY 1 ############################################################################

  rule {
    name     = var.rule_priority_1
    priority = 1

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = var.rule_priority_1
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.cloudwatch_metrics
      metric_name                = var.rule_priority_1
      sampled_requests_enabled   = var.sampled_requests
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = var.cloudwatch_metrics
    metric_name                = var.rule_priority_1
    sampled_requests_enabled   = var.sampled_requests
  }

  ################################################## RULE PRIORITY 2 ############################################################################

  rule {
    name     = var.rule_priority_2
    priority = 2

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = var.rule_priority_2
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.cloudwatch_metrics
      metric_name                = var.rule_priority_2
      sampled_requests_enabled   = var.sampled_requests
    }
  }

  ################################################## RULE PRIORITY 3 ############################################################################

  rule {
    name     = var.rule_priority_3
    priority = 3

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = var.rule_priority_3
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.cloudwatch_metrics
      metric_name                = var.rule_priority_3
      sampled_requests_enabled   = var.sampled_requests
    }
  }

  ################################################## RULE PRIORITY 4 ############################################################################

  rule {
    name     = var.rule_priority_4
    priority = 4

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = var.rule_priority_4
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.cloudwatch_metrics
      metric_name                = var.rule_priority_4
      sampled_requests_enabled   = var.sampled_requests
    }
  }

  ################################################## RULE PRIORITY 5 ############################################################################

  rule {
    name     = var.rule_priority_5
    priority = 5

    override_action {
      count {}
    }

    statement {
      managed_rule_group_statement {
        name        = var.rule_priority_5
        vendor_name = "AWS"
      }
    }

    visibility_config {
      cloudwatch_metrics_enabled = var.cloudwatch_metrics
      metric_name                = var.rule_priority_5
      sampled_requests_enabled   = var.sampled_requests
    }
  }
}

#################################################################################################################
#                                                                                                               #
#                                               WAF ATTACHMENT WEB ACL                                          #   
#                                                                                                               #
#################################################################################################################

resource "aws_wafv2_web_acl_association" "web_acl_association_1" {
  resource_arn = data.aws_apigatewayv2_api.waf_for_api_gateway.arn
  web_acl_arn  = aws_wafv2_web_acl.waf_for_api_gateway.arn
}
