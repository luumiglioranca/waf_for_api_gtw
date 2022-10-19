# Data source responsável por procurar o recurso dentro de sua conta AWS.
# Você pode alocar o ARN do recurso se for mais fácil.

data "aws_apigatewayv2_api" "waf_for_api_gateway" {
  api_id = ""
}
