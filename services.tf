
# Define a PagerDuty Service and associate it with the Escalation Policy
resource "pagerduty_service" "Wifi" {
  name                    = "WiFiService"
  description             = "WiFi Service"
  auto_resolve_timeout    = 14400
  acknowledgement_timeout = 600
  escalation_policy       = pagerduty_escalation_policy.WiFi_escalation_policy.id
}
