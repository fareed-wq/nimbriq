resource "aws_cloudwatch_metric_alarm" "high_cpu" {
  alarm_name        = "nimbriq-high-cpu"
  alarm_description = "Alerts when nimbriq-web-1 average CPU exceeds 80% for 10 minutes"

  namespace   = "AWS/EC2"
  metric_name = "CPUUtilization"
  statistic   = "Average"

  period              = 300
  evaluation_periods  = 2
  datapoints_to_alarm = 2

  threshold           = 80
  comparison_operator = "GreaterThanThreshold"
  treat_missing_data  = "missing"

  actions_enabled = true

  dimensions = {
    InstanceId = module.compute.web_instance_id
  }
}
