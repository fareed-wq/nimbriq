resource "aws_accessanalyzer_analyzer" "external" {
  analyzer_name = "nimbriq-external-access-analyzer"
  type          = "ACCOUNT"
}
