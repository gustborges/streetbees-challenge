require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = Rails.root.join("test", "vcr_cassettes")
  config.hook_into :faraday
  config.ignore_localhost = true
  config.allow_http_connections_when_no_cassette = false
  config.filter_sensitive_data("{public_key}") { Rails.application.credentials.marvel[:public_key] }
end
