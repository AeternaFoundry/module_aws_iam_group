variable "iam_groups" {
  description = <<EOT
Map of iam_groups, attributes below
Required:
    - name
Optional:
    - path
EOT

  type = map(object({
    name = string
    path = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

