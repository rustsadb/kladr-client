require_relative 'lib/kladr_client'

KladrClient.config do |c|
  c.api_key = 'jojo'
  c.base_url = 'makarone.com'
  c.raw_response = true

  puts KladrClient.api_key
  puts KladrClient.base_url
  puts KladrClient.raw_response
end