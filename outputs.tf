output "iam_groups_id" {
  description = "Map of id values across all iam_groups, keyed the same as var.iam_groups"
  value       = { for k, v in aws_iam_group.iam_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iam_groups_arn" {
  description = "Map of arn values across all iam_groups, keyed the same as var.iam_groups"
  value       = { for k, v in aws_iam_group.iam_groups : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "iam_groups_name" {
  description = "Map of name values across all iam_groups, keyed the same as var.iam_groups"
  value       = { for k, v in aws_iam_group.iam_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iam_groups_path" {
  description = "Map of path values across all iam_groups, keyed the same as var.iam_groups"
  value       = { for k, v in aws_iam_group.iam_groups : k => v.path if v.path != null && length(v.path) > 0 }
}
output "iam_groups_unique_id" {
  description = "Map of unique_id values across all iam_groups, keyed the same as var.iam_groups"
  value       = { for k, v in aws_iam_group.iam_groups : k => v.unique_id if v.unique_id != null && length(v.unique_id) > 0 }
}

