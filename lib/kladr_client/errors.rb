# frozen_string_literal: true

# Module for handling responses
module KladrClient
  # An exception raised by handler when given a response with an error.
  class KladrException < StandardError
    # An error code.
    # @return [Fixnum]
    attr_reader :code

    # @return [String]
    attr_reader :reason

    # @return [String]
    attr_reader :body

    # And request url with base url and params
    # @return [String]
    attr_reader :url

    # An exception is initialized by the data from response mash.
    # @param [Hash] data Error data.
    attr_reader :access_error

    def initialize(response)
      # Message of raised exception
      super response.body

      @code = response.status
      @attr_reader = response.env.reason_phrase
      @body = response.body
      @url = response.env.url
    end
  end
end
