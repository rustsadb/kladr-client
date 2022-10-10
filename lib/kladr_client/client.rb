# frozen_string_literal: true

require_relative 'response_handler'
require 'faraday'

# Main class
module KladrClient
  # Client
  class Client
    include ResponseHandler
    attr_reader :token

    def initialize(token = nil)
      @token = token
    end

    def request(options)
      request = ::Faraday.new(
        url: KladrClient.base_url,
        params: format_options(options),
        headers: { 'Content-Type' => 'application/json' }
      )
      resposne = request.get

      handle_response(resposne)
    end

    private

    def format_options(options)
      options[:token] = token || KladrClient.api_key
      transformed = options.transform_keys { |key| key.to_s.camelize(:lower).to_sym }
      transformed.compact
    end
  end
end
