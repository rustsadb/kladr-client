# frozen_string_literal: true

KladrClient.config do |c|
  # These are mandatory options that you must set before running rake tasks:
  # c.api_key = ENV['KLADR_KEY']

  # Provide setup url path for requests:
  # c.base_url = "https://kladr-api.ru/api.php"

  # Provide a raw json response:
  # c.raw_response = true

  # Provide paid_version flag for setting up paid url for requests (if url is not setup already):
  # c.paid_version = true
end
