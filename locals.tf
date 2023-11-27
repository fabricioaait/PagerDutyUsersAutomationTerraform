# Read the CSV file and extract unique team names
locals {
  team_data = csvdecode(file("users.csv"))
  unique_team_names = distinct([for item in local.team_data : item.Team])
}