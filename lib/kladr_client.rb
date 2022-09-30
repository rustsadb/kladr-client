# frozen_string_literal: true

# Settings
module KladrClient
  FREE_URL = 'https://kladr-api.ru/api.php'
  PAID_URL = 'https://kladr-api.com/api.php'

  class << self
    attr_accessor :api_key

    attr_writer :raw_response, :base_url, :paid_version

    # Base url for requests. Exists free and paid urls
    def base_url
      return PAID_URL if @paid_version

      @base_url || FREE_URL
    end

    # Option for paid version
    def paid_version
      @paid_version.nil ? false : @paid_version
    end

    # Define raw json respose
    def raw_response
      @raw_response.nil? ? false : @raw_response
    end

    def config
      yield self
    end
  end
end
