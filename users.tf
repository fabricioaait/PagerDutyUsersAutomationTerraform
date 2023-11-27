# Create users dynamically based on the data in the CSV file and associate them with the teams
resource "pagerduty_user" "user" {
  for_each = { for idx, user in local.team_data : idx => user }

  name  = each.value.Name
  email = each.value.Email
  teams = [pagerduty_team.team[each.value.Team].id]
}

