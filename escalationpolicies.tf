
# Define an Escalation Policy
resource "pagerduty_escalation_policy" "WiFi_escalation_policy" {
  name = "WiFi Escalation Policy"
  teams = [pagerduty_team.team["OpsTeam"].id]

rule {
    escalation_delay_in_minutes = 10
    target {
      type = "user_reference"
      id   = pagerduty_user.user[1].id
    }
  }
}

