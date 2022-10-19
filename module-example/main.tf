module "waf_for_api_gateway" {
  source = "https://github.com/luumiglioranca/waf_for_api_gtw.git"

  web_acl_name        = ""
  account_description = ""
  web_acl_scope       = "REGIONAL"
  rule_priority_1     = "AWSManagedRulesAmazonIpReputationList"
  rule_priority_2     = "AWSManagedRulesAnonymousIpList"
  rule_priority_3     = "AWSManagedRulesCommonRuleSet"
  rule_priority_4     = "AWSManagedRulesKnownBadInputsRuleSet"
  rule_priority_5     = "AWSManagedRulesSQLiRuleSet"
  cloudwatch_metrics  = "true"
  sampled_requests    = "true"
  region              = "us-east-1"
}
