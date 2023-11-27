# Create teams dynamically based on unique values in the "Team" column
resource "pagerduty_team" "team" {
  for_each = toset(local.unique_team_names)

  name        = each.key
  description = "Description for ${each.key}"
}