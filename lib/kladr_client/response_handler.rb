# frozen_string_literal: true

require_relative 'errors'
require 'oj'

module KladrClient
  # Handle reponse of client (raise exception or get json of hash)
  module ResponseHandler
    def handle_response(response)
      raise KladrException, response if response.status >= 400

      return Oj.load(response.body)['result'][1..] if KladrClient.raw_response

      result = Oj.load(response.body, symbol_keys: true)[:result]

      result = result[1..] if KladrClient.free?

      result
    end
  end
end
