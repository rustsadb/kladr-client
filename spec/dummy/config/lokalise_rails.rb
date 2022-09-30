require 'kladr_client'
KladrClient.config do |c|
  c.api_key = ENV['KLADR_KEY']
end
