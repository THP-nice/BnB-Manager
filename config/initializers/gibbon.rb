Gibbon::Request.api_key = Rails.application.credentials.dig(:gibbonapi)
Gibbon::Request.timeout = 15
Gibbon::Request.throws_exceptions = false
